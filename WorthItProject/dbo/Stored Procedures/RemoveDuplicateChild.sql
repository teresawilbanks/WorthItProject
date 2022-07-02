

CREATE       PROC [dbo].[RemoveDuplicateChild] @correctID int, @DuplicateID int
AS
BEGIN
	UPDATE Child 
		SET DuplicateID = @DuplicateID
		WHERE ChildID = @Correctid

	UPDATE Request
		SET ChildID = @correctID
		WHERE ChildID = @DuplicateID

	DELETE Child
		WHERE ChildID = @DuplicateID
END
