














CREATE                                  PROC [dbo].[SetPendingData] AS

BEGIN
--BEGIN TRY
--	BEGIN TRAN
	
	--set RequestType
		UPDATE PendingData
			SET PendingData.RequestType = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel = 'Request Type'
					and EmailRowProcessed = 0
	--Set RequestDate and validate date type
		UPDATE PendingData
			SET PendingData.RequestDate = CASE WHEN ISDATE(CONVERT(varchar(10),emailrowvalue)) = 1 THEN CONVERT(date,(CONVERT(varchar(10),emailrowvalue))) ELSE NULL END
				FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Today%'
					and EmailRowProcessed = 0
	--Set Request by Date
		UPDATE PendingData
			SET PendingData.NeedbyDate = CASE WHEN ISDATE(CONVERT(varchar(10),emailrowvalue)) = 1 THEN CONVERT(date,(CONVERT(varchar(10),emailrowvalue))) ELSE NULL END
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like '%Request by date%'	
					or er.emailrowlabel like '%date needed%')
					and EmailRowProcessed = 0
		--Set Pickup location
		UPDATE PendingData
			SET PendingData.BagPickUpLocation = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Pick up location%'
					and EmailRowProcessed = 0
	--Set Request Completed by:
		UPDATE PendingData
			SET PendingData.RequestCompletedBy = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Person completing form%'
					and EmailRowProcessed = 0
	--Set RCBEmail
	UPDATE PendingData
			SET PendingData.RCBEmail = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Email of%'
					OR ER.EmailRowLabel like 'Email%completing%')
					and EmailRowProcessed = 0
	--Set RCBRelation
		UPDATE PendingData
			SET PendingData.RCBRelation = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Relation%'
				   or er.emailrowlabel like 'Relationship to child%')
					AND ER.EmailRowValue in ('Caregiver', 'GAL', 'Social Worker', 'other', 'Guardian ad litem')
					and EmailRowProcessed = 0
	--Set RCBPhoneNumber
		UPDATE PendingData
			SET PendingData.RCBPhoneNumber = dbo.stripphonenumber(ER.EmailRowValue)
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Phone number of person completing form%' or er.emailrowlabel like 'phone number%')
					and EmailRowProcessed = 0

	--Set ContactWhenComplete
		UPDATE PendingData
			SET PendingData.ContactWhenComplete = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Person to contact when request is complete%'
					and EmailRowProcessed = 0
	--Set SocialWorker
		UPDATE PendingData
			SET PendingData.SocialWorker = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'DSS Social Worker%'
					and EmailRowProcessed = 0
	--Set SWCounty
		UPDATE PendingData
			SET PendingData.SWCounty = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel LIKE 'County of%Social Worker%'
				and EmailRowProcessed = 0

	--Set SWPhoneNumber
		UPDATE PendingData
			SET PendingData.SWPhoneNumber = dbo.stripphonenumber(ER.EmailRowValue)
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'DSS Social Worker phone number%'
					and EmailRowProcessed = 0
	--SW Email
		UPDATE PendingData
			SET PendingData.swEmail = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
					ON ER.emailid = pd.emailid
					WHERE ER.EmailRowLabel like '%Social%worker%Email%'
						and EmailRowProcessed = 0
	--Set GAL
		UPDATE PendingData
			SET PendingData.GAL = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'GAL%Name%'
					and EmailRowProcessed = 0
	----Set GALPhoneNumber
	--	UPDATE PendingData
	--		SET PendingData.GALPhoneNumber = dbo.stripphonenumber(ER.EmailRowValue)
	--		FROM EmailRow AS ER
	--			INNER JOIN PendingData AS PD
	--			ON ER.emailId = PD.EmailID
	--			WHERE ER.EmailRowLabel like 'GAL%Phone Number'
	--				and EmailRowProcessed = 0
	--Set CareGiver
		UPDATE PendingData
			SET PendingData.CareGiver = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Caregiver%Name%'
					and EmailRowProcessed = 0
	--Set CGRelation
		UPDATE PendingData
			SET PendingData.CGRelation = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Caregiver Relation%'
					OR ER.EmailRowLabel like 'Relationship%')
					and requesttype like '%camp%' and RequestDate > '3/27/2022'
					and EmailRowProcessed = 0
	--Set CGPhoneNumber
		UPDATE PendingData
			SET PendingData.CGPhoneNumber = dbo.stripphonenumber(ER.EmailRowValue)
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Caregiver%Phone%'
					OR ER.EmailRowLabel like 'Daytime phone')
						and EmailRowProcessed = 0
	--Set Text CG
		UPDATE PendingData
			SET PendingData.RecText = er.EmailRowvalue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%TEXT%'
					and EmailRowProcessed = 0
	--Set CGEmail
		UPDATE PendingData
			SET PendingData.CGEmail = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like '%email address%'
					OR ER.EmailRowLabel like 'Caregiver%email*')
					and EmailRowProcessed = 0
	--Set CG County
		UPDATE PendingData
			SET pendingData.CGCounty = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like '%County caregiver live%')
					and EmailRowProcessed = 0
	--Set ContactCareGiver
		UPDATE PendingData
			SET PendingData.ContactCareGiver = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Can we contact caregiver%'
					and EmailRowProcessed = 0
	--Set CgLicensingAgency
		UPDATE PendingData
			SET PendingData.CGLicensingAgency = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Licensing Agency%'
					and EmailRowProcessed = 0
	--Set ChildFirstName
		UPDATE PendingData
			SET PendingData.ChildFirstName = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Child%First Name%'
					OR ER.EmailRowLabel like '%name of Camper%')
						and EmailRowProcessed = 0
	--Set ChildLastInitial
		UPDATE PendingData
			SET PendingData.ChildLastInitial = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Child%Last Initial%'
					and EmailRowProcessed = 0
	--Set PlacementType
		UPDATE PendingData
			SET PendingData.PlacementType = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Placement Type%'
					OR ER.EmailRowLabel like 'type of placement%')
						and EmailRowProcessed = 0
	--Set ChildAge
		UPDATE PendingData
			SET PendingData.ChildAge = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Child%Age%'
					OR ER.EmailRowLabel like 'Age camper%')
					and EmailRowProcessed = 0
	--Set ChildDOB
		UPDATE PendingData
			SET PendingData.ChildDOB = CASE WHEN ISDATE(CONVERT(varchar(10),emailrowvalue)) = 1 THEN CONVERT(date,(CONVERT(varchar(10),emailrowvalue))) ELSE NULL END
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like 'Child%Date of Birth%'
					OR ER.EmailRowLabel like 'birth%')
					and EmailRowProcessed = 0
	--Set ChildGender
		UPDATE PendingData
			SET PendingData.ChildGender = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%gender%'
					and EmailRowProcessed = 0
	--Set ChildEthnicity
		UPDATE PendingData
			SET PendingData.ChildEthnicity = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Ethnicity%'
					and EmailRowProcessed = 0
	--Set SiblingsNames
		UPDATE PendingData
			SET PendingData.SiblingsNames = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Siblings Names%' 
				and EmailRowProcessed = 0
	--Set SameHome
		UPDATE PendingData
			SET PendingData.SameHome = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Same home%'
				 and EmailRowProcessed = 0
	--Set ChildShirtSize
		UPDATE PendingData
			SET PendingData.ChildShirtSize = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Shirt'
					and EmailRowProcessed = 0
	--Set ChildPantSize
		UPDATE PendingData
			SET PendingData.ChildPantSize = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'pant'
					and EmailRowProcessed = 0
	--Set ChildShoeSockSize
		UPDATE PendingData
			SET PendingData.ChildShoeSockSize = ltrim(rtrim(ER.EmailRowValue))
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Shoes%'
					and EmailRowProcessed = 0
	--Set ChildUGSize
		UPDATE PendingData
			SET PendingData.ChildUGSize = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Undergarments%'
					and EmailRowProcessed = 0
	--Set ChildDiapers
		UPDATE PendingData
			SET PendingData.ChildDiapers = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Diapers'
					and EmailRowProcessed = 0
	--Set AddtlInfo
		UPDATE PendingData
			SET PendingData.AddtlInfo = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like 'Additional information'
					and EmailRowProcessed = 0
	--Set BedType1
		UPDATE PendingData
			SET PendingData.BedType1 = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Bed #1%'
					and EmailRowProcessed = 0
	--Set BedType2
		UPDATE PendingData
			SET PendingData.BedType2 = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '%Bed #2%'
					and EmailRowProcessed = 0
	
	--Program Specific Data
	--EventLocation
		UPDATE PendingData
			SET Pendingdata.EventLocation = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%location to attend%'
					OR ER.Emailrowlabel like '%up location%'
					and EmailRowProcessed = 0
	
	--CampSpecific
	
	--Caseworker
	UPDATE PendingData
			SET Pendingdata.CaseworkerName = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%caseworker%name%'
					and EmailRowProcessed = 0
	UPDATE PendingData
			SET Pendingdata.CaseworkerPhoneNumber = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%caseworker%Phone%'
					and EmailRowProcessed = 0

	--Child NickName
		UPDATE PendingData
			SET Pendingdata.Nickname = substring(Er.EmailRowValue,1,20)
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%nickname%'
					and EmailRowProcessed = 0
	--schoolgrade
		UPDATE PendingData
			SET Pendingdata.SchoolGrade = substring(Er.EmailRowValue,1,100)
			FROM EmailRow AS ER
				INNER JOIN pendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%school year%'
					OR ER.EmailRowLabel like '%grade%'
					and EmailRowProcessed = 0
	--residingAddress
		UPDATE PendingData
			SET Pendingdata.ResidingAddress = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'residing%'
					and EmailRowProcessed = 0
	--mailingaddress
		UPDATE PendingData
			SET Pendingdata.mailingAddress = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'mailing address%'
					and EmailRowProcessed = 0
	--CareGiver County of Residence
		UPDATE PendingData
			SET Pendingdata.CGCounty = ER.EmailRowValue
			FROM EmailRow as ER
				INNER JOIN Pendingdata As PD
				on ER.emailid = pd.emailID
				WHERE ER.Emailrowlabel like '%County%Cargiver%live%'
					and EmailRowProcessed = 0
				
	--notattendcamp together with siblings
	UPDATE PendingData
			SET Pendingdata.NotAttendCamp = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%not%attend%camp%'
					and EmailRowProcessed = 0
	--Attended overnight
	UPDATE PendingData
			SET Pendingdata.AttendedOvernight = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%attended%overnight%'
					and EmailRowProcessed = 0
	--attended year
	UPDATE PendingData
			SET Pendingdata.AttendedYear = substring(Er.EmailRowValue,1,10)
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%if so%what year%'
					and EmailRowProcessed = 0
	--attended where
	UPDATE PendingData
			SET Pendingdata.attendedWhere = substring(Er.EmailRowValue,1,100)
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%where%camp%'
					and EmailRowProcessed = 0	
	
	--how long in home
		UPDATE PendingData
			SET Pendingdata.HowLonginHome = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'how%long%has%your%home%'
					and EmailRowProcessed = 0
	--Medical placement
		UPDATE PendingData
			SET Pendingdata.MedicalPlacement = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'what%type%placement%'
					and EmailRowProcessed = 0
	--number of placement -- how many placements
		UPDATE PendingData
			SET Pendingdata.NumberofPlacement = substring(Er.EmailRowValue,1,100)
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%how many placement%'
					and EmailRowProcessed = 0
	--Length in care  -- how long in foster care
		UPDATE PendingData
			SET Pendingdata.Lengthcare = substring(Er.EmailRowValue,1,100)
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%Long%care%'
					and EmailRowProcessed = 0
	--Therapeutic
		UPDATE PendingData
			SET Pendingdata.TherapeuticCare = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%therapeutic%care%'
					and EmailRowProcessed = 0
	--emotional age
		UPDATE PendingData
			SET Pendingdata.EmotionalAge = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%emotional%age%'
					and EmailRowProcessed = 0
	--medication
		UPDATE PendingData
			SET Pendingdata.Medication = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'Medication%'
					and EmailRowProcessed = 0
	--medicalreason
		UPDATE PendingData
			SET Pendingdata.MedicationReason = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'reason%'
					and EmailRowProcessed = 0
	--receiving therapy
		UPDATE PendingData
			SET Pendingdata.receivingTherapy = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%receiving therapy%'
					and EmailRowProcessed = 0
	--explain
		UPDATE PendingData
			SET Pendingdata.explain = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%explain%'
					and EmailRowProcessed = 0
	--what counseling agency
		UPDATE PendingData
			SET Pendingdata.CounselingAgency = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'what agency%'
					and EmailRowProcessed = 0
	--counselors name
		UPDATE PendingData
			SET Pendingdata.CounselorName = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'counselor%name'
					and EmailRowProcessed = 0
	--counselor phone number
		UPDATE PendingData	
			SET PendingData.CounselorPhoneNumber = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				on ER.emailid = pd.EmailID
				WHERE ER.EmailRowLabel like 'counselor%phone%'
					and EmailRowProcessed = 0
	--hinder experience
		UPDATE PendingData
			SET Pendingdata.HinderExperience = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%hinder%'
					and EmailRowProcessed = 0
	--best experience possible
		UPDATE PendingData
			SET Pendingdata.bestexperience = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%best%experience%'
					and EmailRowProcessed = 0
	--aggressiveness
		UPDATE PendingData
			SET Pendingdata.Aggressiveness = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'aggressiveness%'
					and EmailRowProcessed = 0
	--biting
		UPDATE PendingData
			SET Pendingdata.biting = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'biting%'
					and EmailRowProcessed = 0
	--eating disorder
		UPDATE PendingData
			SET Pendingdata.EatingDisorder = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'eating disorder%'
					and EmailRowProcessed = 0
	--hyperactivie
		UPDATE PendingData
			SET Pendingdata.Hyperactive = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'hyperactive%'
					and EmailRowProcessed = 0
	--hitting
		UPDATE PendingData
			SET Pendingdata.Hitting = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'hitting%'
					and EmailRowProcessed = 0
	--lying
		UPDATE PendingData
			SET Pendingdata.Lying = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'Lying%'
					and EmailRowProcessed = 0
	--runs away
		UPDATE PendingData
			SET Pendingdata.RunsAway = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'runs away%'
					and EmailRowProcessed = 0
	--inappropriate sexual behavior
		UPDATE PendingData
			SET Pendingdata.SexualBehavior = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%sexual%'
					and EmailRowProcessed = 0
	--Steals
		UPDATE PendingData
			SET Pendingdata.Steals = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'steals%'
					and EmailRowProcessed = 0
	--tantrums
		UPDATE PendingData
			SET Pendingdata.Tantrums = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'tantrums%'
					and EmailRowProcessed = 0
	--Bedwetting
		UPDATE PendingData
			SET Pendingdata.Bedwetting = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%bedwetting%'
					and EmailRowProcessed = 0

	--Night Terrors
	UPDATE PendingData
			SET Pendingdata.NightTerrors = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%terror%'
					and EmailRowProcessed = 0


	--Nightmares
	UPDATE PendingData
			SET Pendingdata.Nightmares = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%nightmare%'
					and EmailRowProcessed = 0

	--withdrawn
		UPDATE PendingData
			SET Pendingdata.Withdrawn = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like 'withdrawn%'
					and EmailRowProcessed = 0
	--any additional
		UPDATE PendingData
			SET Pendingdata.AdditionalBehavior = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%additional behavior%'
					and EmailRowProcessed = 0
	
	--12 Hour Specific Data
	--current social worker
		UPDATE PendingData
			SET pendingdata.HaveCurrentSW = Er.emailrowvalue
			FROM EmailRow AS ER
				INNER JOIN PendingData as PD
				on ER.Emailid = pd.emailid
				Where ER.emailrowlabel like '%have a current dss social%'
					and EmailRowProcessed = 0
	--Reference Name
		UPDATE PendingData
			SET Pendingdata.ReferenceName = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%reference name%'
					and EmailRowProcessed = 0
	--Reference Title
		UPDATE PendingData
			SET Pendingdata.ReferenceTitle = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%reference title%'
					and EmailRowProcessed = 0
	--Reference Phone Number
		UPDATE PendingData
		SET pendingdata.ReferencePhoneNumber = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%reference%phone%'
					and EmailRowProcessed = 0
	--County of Current Residence
		UPDATE PendingData
			SET Pendingdata.CountyCurrentResidence = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%County of current residence%'
					and EmailRowProcessed = 0
	--Other Assistance Requested yes/no
		UPDATE PendingData
			SET Pendingdata.OtherAssistance = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%requested Christmas Assistance%'
				and EmailRowProcessed = 0
		UPDATE PendingData
			SET Pendingdata.AssistanceBy = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%if yes%who%'
				and EmailRowProcessed = 0
--Other Wishlist
		UPDATE PendingData
			SET Pendingdata.WishList = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%Wish List%'
				and EmailRowProcessed = 0
		UPDATE PendingData
			SET Pendingdata.Item1 = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%item 1%'
				and EmailRowProcessed = 0
		UPDATE PendingData
					SET Pendingdata.Item2 = Er.EmailRowValue
					FROM EmailRow AS ER
						INNER JOIN PendingData As PD
						on ER.emailID = pd.EmailID
						WHERE ER.EmailRowLabel like '%item 2%'
						and EmailRowProcessed = 0
		UPDATE PendingData
					SET Pendingdata.Item3 = Er.EmailRowValue
					FROM EmailRow AS ER
						INNER JOIN PendingData As PD
						on ER.emailID = pd.EmailID
						WHERE ER.EmailRowLabel like '%item 3%'
						and EmailRowProcessed = 0
		UPDATE PendingData
					SET Pendingdata.Item4 = Er.EmailRowValue
					FROM EmailRow AS ER
						INNER JOIN PendingData As PD
						on ER.emailID = pd.EmailID
						WHERE ER.EmailRowLabel like '%item 4%'
						and EmailRowProcessed = 0
		UPDATE PendingData
					SET Pendingdata.Item5 = Er.EmailRowValue
					FROM EmailRow AS ER
						INNER JOIN PendingData As PD
						on ER.emailID = pd.EmailID
						WHERE ER.EmailRowLabel like '%item 5%'
						and EmailRowProcessed = 0
		UPDATE PendingData
			SET Pendingdata.ClothingRequested = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE ER.EmailRowLabel like '%Clothing Requested%'
				and EmailRowProcessed = 0


--Attended Before
		UPDATE PendingData
			SET Pendingdata.AttendedBefore = Er.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData As PD
				on ER.emailID = pd.EmailID
				WHERE (ER.EmailRowLabel like '%attended%before%'
				 or er.emailrowlabel like '%attended%previously%')
				 and requesttype like '%camp%' and requestdate > '3/27/2022'
				and EmailRowProcessed = 0

--Child2 for bed request
	--2 Set ChildFirstName
		UPDATE PendingData
			SET PendingData.Child2FirstName = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '#2%First Name%'
					--OR ER.EmailRowLabel like '%name of Camper%')
						and EmailRowProcessed = 0
	--2 Set ChildLastInitial
		UPDATE PendingData
			SET PendingData.Child2LastInitial = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '#2%Last Initial%'
					and EmailRowProcessed = 0
	--2 Set PlacementType
		UPDATE PendingData
			SET PendingData.Child2PlacementType = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like '#2%Placement Type%')
					--OR ER.EmailRowLabel like 'type of placement%')
						and EmailRowProcessed = 0
	--2 Set ChildDOB
		UPDATE PendingData
			SET PendingData.Child2DOB = CASE WHEN ISDATE(CONVERT(varchar(10),emailrowvalue)) = 1 THEN CONVERT(date,(CONVERT(varchar(10),emailrowvalue))) ELSE NULL END
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE (ER.EmailRowLabel like '#2%Date of Birth%'
					OR ER.EmailRowLabel like '#2%birth%')
					and EmailRowProcessed = 0
	--2 Set ChildGender
		UPDATE PendingData
			SET PendingData.Child2Gender = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '#2%gender%'
					and EmailRowProcessed = 0
	--2 Set ChildEthnicity
		UPDATE PendingData
			SET PendingData.Child2Ethnicity = ER.EmailRowValue
			FROM EmailRow AS ER
				INNER JOIN PendingData AS PD
				ON ER.emailId = PD.EmailID
				WHERE ER.EmailRowLabel like '#2%Ethnicity%'
					and EmailRowProcessed = 0

	--Set rows to processed
		UPDATE EmailRow
			SET EmailRowProcessed = 1
			WHERE EmailRowProcessed = 0 
	--COMMIT
--END TRY
--BEGIN CATCH
--	WHILE(@@TRANCOUNT > 0)
--	BEGIN
--		ROLLBACK
--	END
--END CATCH	
END
