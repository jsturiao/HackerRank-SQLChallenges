SELECT CO.Continent, AVG(CI.POPULATION) FROM CITY CI INNER JOIN COUNTRY CO ON CI.CountryCode = CO.Code GROUP BY CO.Continent