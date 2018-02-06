
SELECT
	CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not a Triangle'
			WHEN A = B AND B = C AND C = A THEN 'Equilateral'
			WHEN A = B OR A = C OR B = C THEN 'Isoceles'
			ELSE 'Scalene'
	END
FROM TRIANGLES