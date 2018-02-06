
-- MySQL
SET @row := 0;
SELECT REPEAT('* ', @row := @row + 1) FROM information_schema.tables WHERE @row < 20

-- SQL Server
DECLARE @var smallint = 0;
WHILE @var <= 20
  BEGIN
    SELECT REPLICATE('* ', @var);
    SET @var += 1;
  END;