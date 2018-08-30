# MySQL Code
SELECT h.hacker_id, h.name
    FROM hackers as h
    JOIN (submissions as s, challenges as c, difficulty as d)
        ON (
            s.hacker_id = h.hacker_id
            AND s.challenge_id = c.challenge_id
            AND c.difficulty_level = d.difficulty_level
            AND s.score = d.score
           )
    GROUP BY h.hacker_id, h.name
        HAVING COUNT(h.hacker_id) > 1
    ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id