declare @mystr nvarchar(100) = 'DAD'
if(@mystr=REVERSE(@mystr))
BEGIN
pRINT('���� ������ �������� �����������')
END
ELSE
BEGIN
pRINT('���� ������ �� �������� �����������')
END

---------------------

DECLARE @mystr2 NVARCHAR(100) = 'DAD DAD DAD DAD DAD'
DECLARE @findWord NVARCHAR(50) = 'DAD'
DECLARE @pos INT = CHARINDEX(@findWord, @mystr2, 1)
DECLARE @COUNT INT = 0
WHILE @pos > 0
BEGIN
    SET @COUNT = @COUNT + 1
    SET @pos = CHARINDEX(@findWord, @mystr2, @pos + LEN(@findWord))
END

PRINT '���������� ����������� ����� � ���� ������ = ' + CAST(@COUNT AS NVARCHAR)

---------------------

declare @strviagra nvarchar(100) = 'buy Viagra now'
declare @badstr nvarchar(50) = 'Viagra'
if CHARINDEX(@badstr,@strviagra)>0
begin
Print('��� ����!!')
end
else
begin
Print('��� �� ����!!')
end