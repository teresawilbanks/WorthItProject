





-- 02/22/2022 Keith Sherrill - add duplicate name check and matches on Email and Phone to updates

CREATE             PROC [dbo].[SetTempRequest] AS

-- Create table to hold duplicate names from Adult table.
CREATE TABLE #duplicates
(RowNbr INT IDENTITY(1,1) NOT NULL,
 FirstName NVARCHAR(50) NULL, 
 LastName NVARCHAR(50) NULL,
 DuplicateCount INT NULL)

-- Find and insert duplicates into temp table
INSERT #duplicates (FirstName, LastName, DuplicateCount)
SELECT FirstName, LastName, COUNT(*)
FROM adult 
GROUP BY FirstName, LastName
HAVING COUNT(*) > 1

BEGIN TRY
	BEGIN TRANSACTION
	 INSERT INTO dbo.tempRequest 
		(PendingRequestID,RequestType,RequestDate,NeedbyDate,RequestCompletedby,RCBEmail,RCBRelation,RCBPhoneNumber,ContactWhenComplete,SocialWorker,SWCounty,SWPhoneNumber,
		GAL,GALPhoneNumber,CareGiver,CGRelation,CGPhoneNumber,CGEmail,ContactCareGiver,CGLicensingAgency,ChildFirstName,ChildLastInitial,PlacementType,ChildAge,ChildDOB,ChildGender,ChildEthnicity,SiblingsNames,
		SameHome,ChildShirtSize,ChildPantSize,ChildShoeSockSize,ChildUGSize,ChildDiapers,AddtlInfo,Comments,Child2FirstName,Child2LastInitial,Child2PlacementType,Child2Age,Child2DOB,Child2Gender,Child2Ethnicity,
		Child2SiblingsNames,Child2SameHome,EMailID,EmailTypeID,Processed,Status,ProcessedDate,BedType1,BedType2,Nickname,SchoolGrade,ResidingAddress,MailingAddress,SWEmail,EventLocation,EmailDateTime,EmailSubject,ReferenceName,ReferenceTitle,ReferencePhoneNumber,CountyCurrentResidence,
		OtherAssistance,Assistanceby,HaveCurrentSw,ClothingRequested,AttendedBefore,CGCounty,txtRecText,FormPickUpLocation)  
 	 SELECT PendingRequestID,RequestType,RequestDate,NeedbyDate,RequestCompletedby,RCBEmail,RCBRelation,RCBPhoneNumber,ContactWhenComplete,SocialWorker,SWCounty,SWPhoneNumber,GAL,GALPhoneNumber,CareGiver,CGRelation,
			CGPhoneNumber,CGEmail,ContactCareGiver,CGLicensingAgency,ChildFirstName,ChildLastInitial,PlacementType,ChildAge,ChildDOB,ChildGender,ChildEthnicity,SiblingsNames,SameHome,ChildShirtSize,ChildPantSize,ChildShoeSockSize,
			ChildUGSize,ChildDiapers,AddtlInfo,Comments,Child2FirstName,Child2LastInitial,Child2PlacementType,Child2Age,Child2DOB,Child2Gender,Child2Ethnicity,Child2SiblingsNames,Child2SameHome,EMailID,EmailTypeID,Processed,
			Status,ProcessedDate,BedType1,BedType2,Nickname,SchoolGrade,ResidingAddress,MailingAddress,SWEmail,EventLocation,EmailDateTime,EmailSubject,ReferenceName,ReferenceTitle,ReferencePhoneNumber,CountyCurrentResidence,OtherAssistance,Assistanceby,HaveCurrentSw,ClothingRequested,AttendedBefore,CGCounty,RecText,bagpickuplocation
		FROM dbo.PendingData
			WHERE processed = 0
	 INSERT INTO dbo.tempRequestCAMP
		(PendingRequestID,EMailID,NotAttendCamp,HowLonginHome,NumberofPlacement,Lengthcare,TherapeuticCare,EmotionalAge,Medication,receivingTherapy,explain,CounselingAgency,CounselorName,CounselorPhoneNumber,HinderExperience,Aggressiveness,biting,EatingDisorder,Hyperactive,Hitting,
		Lying,RunsAway,SexualBehavior,Steals,Tantrums,Withdrawn,AdditionalBehavior,MedicationReason,MedicalPlacement, bestexperience, CaseworkerName, CaseworkerPhoneNumber, bedwetting, NightTerrors, Nightmares, AttendOvernight, AttendWhere, AttendYear)  
 	 SELECT PendingRequestID,EMailID,NotAttendCamp,HowLonginHome,NumberofPlacement,Lengthcare,TherapeuticCare,EmotionalAge,Medication,receivingTherapy,explain,
			CounselingAgency,CounselorName,CounselorPhoneNumber,HinderExperience,Aggressiveness,biting,EatingDisorder,Hyperactive,Hitting,Lying,RunsAway,SexualBehavior,Steals,Tantrums,Withdrawn,AdditionalBehavior,MedicationReason,
			MedicalPlacement, bestexperience, CaseworkerName, CaseworkerPhoneNumber, Bedwetting, NightTerrors, Nightmares, AttendedOvernight, attendedWhere, AttendedYear
		FROM dbo.PendingData 
			WHERE processed = 0
		UPDATE PendingData
			SET Processed = 1
			WHERE PendingrequestID IN (select pendingrequestid FROM tempRequest)
	COMMIT Transaction
END TRY
BEGIN CATCH
	WHILE(@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK
	END
END CATCH

--BEGIN TRY
	BEGIN TRAN
		UPDATE tempRequest
			SET requesttypeID = rt.RequestTypeID
			FROM requesttype AS rt 
			join tempRequest AS tr ON rt.RequestName like LTRIM(RTRIM(tr.RequestType))
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET RCBID = a.adultID
			FROM adult AS a 
			JOIN tempRequest AS tr
			ON CONCAT(a.FirstName, ' ', a.lastname) = tr.RequestCompletedby
			AND a.Email = tr.RCBEmail
			AND a.PhoneNumberPrimary = tr.RCBPhoneNumber
			WHERE tr.Processed=0
			AND NOT EXISTS(SELECT 1
				FROM #duplicates d
				WHERE d.FirstName = a.FirstName AND a.LastName = d.LastName )
		UPDATE tempRequest
			SET RCBFName = LTRIM(RTRIM(SUBSTRING(RequestCompletedby, 0, CHARINDEX(' ', RequestCompletedby)))),
				RCBLName = LTRIM(RTRIM(SUBSTRING(RequestCompletedby, CHARINDEX(' ', RequestCompletedby)+1, 8000)))
			WHERE processed = 0
		UPDATE temprequest
			SET	RCBFName=UPPER(LEFT(RCBFname,1))+LOWER(SUBSTRING(RCBFName,2,LEN(RCBFName))),
				RCBLName=UPPER(LEFT(RCBLName,1))+LOWER(SUBSTRING(RCBLName,2,LEN(RCBLName)))
			WHERE Processed = 0
		UPDATE tempRequest
			SET CompletionContactTypeID = ajt.adultjobtypeid
			FROM AdultJobType AS ajt
			join temprequest AS tr
			ON ajt.JobName = ISNULL(tr.ContactWhenComplete,1)
			Where tr.processed=0
		UPDATE temprequest
			SET CompletionContactTypeID = 1
			WHERE processed=0 and NULLIF(completioncontacttypeid, '') is null
		UPDATE tempRequest
			SET BagPickUpLocation = pu.PULocationID
			FROM BagPickupLocation AS pu 
			join temprequest as tr ON tr.formPickUpLocation = pu.FormLocationName
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET SWID = a.adultID
			FROM adult AS a 
			JOIN tempRequest as tr 
			ON CONCAT(a.FirstName, ' ', a.lastname) = tr.SocialWorker
			AND a.PhoneNumberPrimary = tr.SWPhoneNumber
			AND a.Email = tr.SWEmail
			WHERE tr.Processed=0
			AND NOT EXISTS(SELECT 1
				FROM #duplicates d
				WHERE d.FirstName = a.FirstName AND a.LastName = d.LastName )
		UPDATE tempRequest
			SET SWFName = LTRIM(RTRIM(SUBSTRING(SocialWorker, 0, CHARINDEX(' ', SocialWorker)))),
				SWLName = LTRIM(RTRIM(SUBSTRING(SocialWorker, CHARINDEX(' ', SocialWorker)+1, 8000)))
			WHERE processed=0
		UPDATE temprequest
			SET	SWFName=UPPER(LEFT(SWFname,1))+LOWER(SUBSTRING(SWFName,2,LEN(SWfname))),
				SWLName=UPPER(LEFT(SWLname,1))+LOWER(SUBSTRING(SWLName,2,LEN(SWLname)))
			WHERE Processed = 0
		UPDATE tempRequest
			SET SWCountyID = cty.countyID
			FROM County as cty
			join temprequest as tr ON cty.CountyName = tr.SWCounty
			WHERE tr.Processed = 0
		UPDATE tempRequest
			SET CGCountyID = cty.countyID
			FROM County as cty
			join temprequest as tr ON cty.CountyName = tr.CGCounty
			WHERE tr.Processed = 0
		UPDATE tempRequest
			SET GALID = a.adultID
			FROM Adult AS a 
			JOIN tempRequest as tr
			ON CONCAT(a.FirstName, ' ', a.LastName) = tr.GAL
			AND a.PhoneNumberPrimary = tr.GALPhoneNumber
			WHERE tr.Processed=0 and tr.GAL IS NOT NULL
			AND NOT EXISTS(SELECT 1
				FROM #duplicates d
				WHERE d.FirstName = a.FirstName AND a.LastName = d.LastName )
		UPDATE tempRequest
			SET GALID = 33
			WHERE Processed=0 and gal IS NULL
		UPDATE tempRequest
			SET GALFName = LTRIM(RTRIM(SUBSTRING(GAL, 0, CHARINDEX(' ', GAL)))),
				GALLName = LTRIM(RTRIM(SUBSTRING(GAL, CHARINDEX(' ', GAL)+1, 8000)))
			WHERE Processed = 0
		update tempRequest
			set	GALFName=UPPER(LEFT(GALFname,1))+LOWER(SUBSTRING(GALFName,2,LEN(GALfname))),
				GALLName=UPPER(LEFT(GALLname,1))+LOWER(SUBSTRING(GALLName,2,LEN(GALLname)))
			WHERE Processed = 0
		UPDATE tempRequest
			SET CGID = a.adultID
			FROM adult AS a join temprequest as tr
			ON CONCAT(a.FirstName, ' ', a.lastname) = tr.CareGiver
			AND a.PhoneNumberPrimary = tr.CGPhoneNumber
			AND a.Email = tr.CGEmail
			WHERE tr.Processed=0
			AND NOT EXISTS(SELECT 1
				FROM #duplicates d
				WHERE d.FirstName = a.FirstName AND a.LastName = d.LastName )
		UPDATE tempRequest
			SET CGFName = LTRIM(RTRIM(SUBSTRING(CareGiver, 0, CHARINDEX(' ', CareGiver)))),
				CGLName = LTRIM(RTRIM(SUBSTRING(CareGiver, CHARINDEX(' ', CareGiver)+1, 8000)))
			where processed = 0
		UPDATE tempRequest
			set	CGFName=UPPER(LEFT(CGFname,1))+LOWER(SUBSTRING(CGFName,2,LEN(CGfname))),
				CGlName=UPPER(LEFT(CGlname,1))+LOWER(SUBSTRING(CGLName,2,LEN(CGLname)))
			WHERE Processed = 0
		UPDATE tempRequest
			SET CGPlacementTypeID = cgpt.CGPlacementTypeID
			FROM CareGiverPlacementType AS cgpt join temprequest as tr
			ON cgpt.PlacementTypeName = tr.CGRelation
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET CGLicensingAgencyID = ala.AgencyID
			FROM AdultLicensingAgency AS ala join temprequest as tr
			ON ala.AgencyName = tr.CGLicensingAgency
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET ContactCG = 1
			WHERE processed = 0 and ContactCareGiver = 'Yes'
		UPDATE temprequest
			SET ContactCG = 0
			WHERE processed = 0 and ContactCareGiver = 'no'
		UPDATE tempRequest
			SET RecText = 1
			WHERE processed = 0 and txtRecText = 'Yes'
		UPDATE temprequest
			SET recText = 3
			WHERE processed = 0 and txtRecText = 'No'
		UPDATE temprequest
			SET recText = 99
			WHERE processed = 0 and txtrectext is null
		UPDATE temprequest
			SET RecText = 0
			WHERE processed = 0 and txtRecText = 'no'
		UPDATE tempRequest
			SET ChildID	= child.ChildID
			FROM Child join temprequest as tr
			ON child.FirstName = tr.ChildFirstName
				AND child.LastInitial = tr.ChildLastInitial
				AND child.dob = tr.ChildDOB
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET ChildLastName = LTRIM(RTRIM(SUBSTRING(ChildfirstName, CHARINDEX(' ', childfirstname)+1, 8000))),
				ChildLastInitial = LTRIM(RTRIM(SUBSTRING(Childlastname, CHARINDEX(' ', childlastname)+1,1))),
				ChildfirstName = LTRIM(RTRIM(SUBSTRING(ChildFirstName, 0, CHARINDEX(' ', ChildFirstName))))
				--where RequestType like '%camp%'
			WHERE Processed = 0 AND RequestType like '%camp%'
		
		UPDATE temprequest
			SET ChildFirstName=UPPER(LEFT(ChildFirstName,1))+LOWER(SUBSTRING(ChildFirstName,2,LEN(ChildFirstName)))
			WHERE processed=0
		UPDATE tempRequest
			SET GenderID = g.GenderID
			FROM gender as g join temprequest as tr
			ON g.GenderType = tr.ChildGender
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET RaceID = r.EthnicityID
			FROM race as r join temprequest as tr
			ON r.EthnicityName = tr.ChildEthnicity
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET ChildPlacementTypeID = cpt.ChildPlacementID
			FROM ChildPlacementType as cpt 
			join temprequest as tr
			ON cpt.Type = tr.PlacementType
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET ChildID2	= child.ChildID
			FROM Child join temprequest as tr
			ON child.FirstName = tr.Child2FirstName
				AND child.LastInitial = tr.Child2LastInitial
				AND child.dob = tr.Child2DOB
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET Child2Gender = g.GenderID
			FROM gender as g join temprequest as tr
			ON g.GenderType = tr.Child2Gender
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET Child2EthnicityID = r.EthnicityID
			FROM race as r join temprequest as tr
			ON r.EthnicityName = tr.Child2Ethnicity
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET Child2PlacementID = cpt.ChildPlacementID
			FROM ChildPlacementType as cpt 
			join temprequest as tr
			ON cpt.Type = tr.child2PlacementType
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET EventLocationID = el.locationid
			FROM EventLocation as EL join temprequest as tr
			on el.Place	= tr.EventLocation
			WHERE tr.Processed=0
		UPDATE tempRequest
			SET EventLocationID = 7
			WHERE Processed=0 and requesttype like '%Camp%'

		UPDATE tempRequest
			SET LOTFormNumber = substring(
				EmailSubject, 
				Charindex('#', emailsubject)+1,
				Charindex(']',EmailSubject)-1 - Charindex( '#', emailsubject)
				)  
			WHERE processed = 0
		UPDATE tempRequest
			SET requestdate = convert (date, emaildatetime)
			WHERE requestdate is NULL AND processed = 0
		UPDATE tempRequest
			SET needbydate = dateadd(day,14,requestdate)
			WHERE needbydate is NULL AND processed = 0
		UPDATE temprequest
			SET comments = AddtlInfo
			Where comments IS NULL and processed = 0
		UPDATE tempRequest
			SET CountyResidenceID = c.CountyID
			FROM county AS c join temprequest as tr
			on c.CountyName = tr.countycurrentresidence
			WHERE processed = 0
		UPDATE tempRequest
			SET SWID = 33
			WHERE HaveCurrentSW = 'no' AND processed = 0
		UPDATE tempRequest
			SET GALID = 33
			WHERE Requesttype like '%Christmas%' AND processed = 0
		UPDATE temprequest
			SET wishlist =  item1 + ISNULL(Char(13) + CHAR(10) + pendingdata.item2, '')
					+ ISNULL(Char(13) + CHAR(10) + pendingdata.item3, '')
					+ ISNULL(Char(13) + CHAR(10) + pendingdata.item4, '')
					+ ISNULL(Char(13) + CHAR(10) + pendingdata.item5, '')
					+ ISNULL(Char(13) + CHAR(10) + pendingdata.wishlist, '')
					From Pendingdata join temprequest on pendingdata.emailid = temprequest.emailid
					Where tempRequest.processed = 0
		UPDATE tempRequest
			SET CampaignID = c.campaignID
			from campaign as c
				join campaigntype as ct
				on c.campaigntypeid = ct.campaigntypeid
				join temprequest as tr
				on tr.requesttype = ct.campaignname
					Where tr.processed = 0 AND c.campaignstatusid=5
		UPDATE temprequest
			SET EventLocationID = el.locationid
			FROM eventlocation as el join temprequest as tr on SUBSTRING(tr.EventLocation,3,9) = SUBSTRING(el.formtitle,1,9)
			WHERE processed = 0 and requesttypeid = 8
		UPDATE temprequest
			SET EventlocationID = el.locationid
			FROM Eventlocation el join temprequest tr on SUBSTRING(tr.eventlocation,1,9) = SUBSTRING(el.city,1,9)
			WHERE processed = 0 and requesttypeid = 6
		UPDATE temprequest
			SET EventlocationID = el.locationid
			FROM Eventlocation el join temprequest tr on SUBSTRING(tr.eventlocation,3,5) = SUBSTRING(el.city,1,5) and el.active = 1
			WHERE  processed = 0 and requesttypeid = 7
		UPDATE tempRequest
			SET Status = 3
			WHERE processed = 0
		UPDATE tempRequest
			SET Processed = 1
			WHERE processed = 0


COMMIT

DROP TABLE #duplicates

--END TRY
--BEGIN CATCH
--	WHILE(@@TRANCOUNT > 0)
--	BEGIN
--		ROLLBACK
--	END
--END CATCH

