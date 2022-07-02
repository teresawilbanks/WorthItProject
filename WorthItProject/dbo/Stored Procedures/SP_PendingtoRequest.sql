












CREATE                          PROC [dbo].[SP_PendingtoRequest] @txtemailid int, @cuser varchar(255), @AdultID int OUTPUT


AS

INSERT INTO Request ( EMailID, RequestTypeID, CHILDID, RequestStatusID, RequestDate, NeedbyDate, RequestCompletedbyAdultID, SocialWorkerAdultID, GALAdultID, CareGiverAdultID, CompletionContactJobType, BagPickupLocation, BECID, ChildShirtSizeGroupID, ChildShirtSizeID, ChildPantSizeGroupID, ChildPantSizeID, ChildUnderSizeGroupID, ChildUndergarmentsSizeID, ChildPajamaSizeGroupID, ChildPajamaSizeID, OutfitSizeGroupID, OutfitSizeID, CoatSizeGroupID, CoatSizeID, DiaperAgeGroupID, DiaperSizeID, coatcomment, outfitcomment, ChildPajamaComment, bagofhopeagegroupID, SeasonID, BagEmbroiderColor, ClothingComments, GeneralComments, ChildShirtComment, ChildPantComment, ChildUndergarmentComment, ChildDiaperPullUpComment, BagEmbroideryNo, childJeanAgeGroupID, childJeansizeID, childJeancomment, ChildShoeSizeGroupID, ChildShoeSockSizeID, ShoeComment, SockComment, TeresaMComments, ReferenceName, ReferenceTitle, ReferencePhoneNumber, CountyResidenceID, OtherAssistance, Assistanceby, HaveCurrentSW, WishList, ClothingRequested, AttendedBefore, CampaignID, EventLocationID, GroupHomeID, schoolgradetxt, CreateDate, LastModifiedBy)
	SELECT eMailID, requestTypeID,  CHILDID, 10,  RequestDate, needbydate, RCBID,  SWID,  GALID,  CGID,  CompletionContactTypeID,  BagPickUpLocation,  BagEmbroiderCompany,  ShirtSizeAgeGroupID,  shirtSizeID,  PantAgeGroupID,  PantSizeID,  UnderwearAgeGroupID,  UnderwearSizeID,  PajamaAgeGroupID,  PajamaSizeID,  OutfitSizeGroupID,  OutfitSizeID,  CoatAgeGroupID,  CoatSizeID,  DiaperAgeGroupID,  DiaperSizeID,  coatcomment,  outfitcomment,  PajamaComment,  BoHAgeGroupID,  SeasonID,  EmbroideryColor,  generalclothingcomment, Comments,  ChildShirtSize,  ChildPantSize,  ChildUGSize,  ChildDiapers,  BagNumber,  JeanAgeGroupID,  JeanSizeID,  jeancomment,  ShoeAgeGroupID,  ShoeSizeID,  ChildShoeSockSize,  SockComment,  TeresaSpecComment,  ReferenceName,  ReferenceTitle,  ReferencePhoneNumber,  CountyResidenceID,  OtherAssistance,  Assistanceby,  HaveCurrentSW,  WishList,  ClothingRequested,  AttendedBefore,  CampaignID,  EventLocationID,  GroupHomeID, SchoolGrade, getdate(), @cuser
	FROM tempRequest
	WHERE (temprequest.emailid = @txtemailid)

UPDATE tempRequest
	SET Status = 10
	WHERE (emailid = @txtemailid)


