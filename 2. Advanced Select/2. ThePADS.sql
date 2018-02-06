
SELECT Name +'('+left(Occupation, 1)+')' FROM OCCUPATIONS ORDER BY Name

SELECT 'There are a total of '+rtrim(count(occupation))+' '+lower(Occupation)+'s.'
FROM OCCUPATIONS
GROUP BY Occupation ORDER BY count(Name), Occupation