DECLARE @COUNTER INT = 20;
WHILE @COUNTER >= 0
BEGIN
    PRINT REPLICATE('* ', @COUNTER)
    SET @COUNTER = @COUNTER - 1
END