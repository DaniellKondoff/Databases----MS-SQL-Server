Create FUnction ufn_IsWordComprised(@setOfLetters varchar(max),@word varchar(max))
Returns bit
AS
BEGIN
declare @result bit=0
declare @wordLen int = LEN(@word)
Declare @index int =1;
declare @resultCheck int=0

while (@index<=@wordLen)
Begin
	declare @currentChar varchar(1) = substring(@word,@index,1)
	IF (CHARINDEX(@currentChar,@setOfLetters)>0)
	Begin
		SET @resultCheck+=1
	END
	Set @index+=1
END

IF(@resultCheck=@wordLen)
Begin
	set @result=1
END
return @result
END



