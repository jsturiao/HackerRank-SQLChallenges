
DECLARE @max INT = 1000;
DECLARE @i INT = 2;
DECLARE @j INT = 2;
DECLARE @isPrime BIT = 1;
DECLARE @result VARCHAR(2000) = '';

WHILE (@i <= @max)
    BEGIN
        WHILE (@j <= SQRT(@i))
            BEGIN
                IF (@i % @j = 0)
                    BEGIN
                        SET @j = @i;
                        SET @isPrime = 0;
                    END
                SET @j = @j + 1;
            END
        IF (@isPrime = 1)
            BEGIN
                SET @result = @result + CONVERT(VARCHAR, @i) + '&';
            END

        SET @i = @i + 1;
        SET @j = 2;
        SET @isPrime = 1;
    END

SELECT LEFT(@result, LEN(@result) - 1);
