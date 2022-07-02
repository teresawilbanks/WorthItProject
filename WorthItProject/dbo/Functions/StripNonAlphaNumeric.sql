
CREATE FUNCTION [dbo].[StripNonAlphaNumeric](@OriginalText VARCHAR(2000))
RETURNS VARCHAR(2000)

BEGIN
DECLARE @CleanedText VARCHAR(2000)

;WITH tally (N) as

(SELECT TOP 2000 row_number() OVER (ORDER BY sc1.id)
 FROM Master.dbo.SysColumns sc1
 CROSS JOIN Master.dbo.SysColumns sc2)
SELECT @CleanedText = ISNULL(@CleanedText,'') +
CASE
	--ascii visible characters, 33 to 126
	WHEN ASCII(SUBSTRING(@OriginalText,Tally.N,1)) BETWEEN 32 AND  126
	THEN SUBSTRING(@OriginalText,Tally.N,1)
	ELSE '' END

FROM tally
WHERE Tally.N <= LEN(@OriginalText)  

RETURN @CleanedText

END
