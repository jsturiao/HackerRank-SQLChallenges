SELECT Start_Date, End_Date FROM (
    SELECT A.Start_Date, MIN(B.End_Date) AS End_Date FROM
    (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) A,
    (SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) B
    WHERE Start_Date < End_Date
    GROUP BY A.Start_Date
) P
ORDER BY DATEDIFF(End_Date, Start_Date), Start_Date
