SELECT
    (CASE WHEN G.Grade >= 8 THEN S.Name ELSE null END),
    G.Grade,
    S.Marks FROM Students S INNER JOIN Grades G ON S.Marks BETWEEN Min_Mark AND Max_Mark
    ORDER BY G.Grade DESC, S.Name, S.Marks