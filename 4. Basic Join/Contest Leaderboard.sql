SELECT H.hacker_id, name, SUM(SCORE) AS TOTAL_SCORE FROM HACKERS AS H INNER JOIN 
(
    /* find max_score*/
    SELECT hacker_id, MAX(SCORE) AS score FROM SUBMISSIONS GROUP BY challenge_id, hacker_id
) max_score ON H.hacker_id = max_score.hacker_id
GROUP BY H.hacker_id, name
/* don't accept hackers with total_score=0 */
HAVING TOTAL_SCORE > 0
/* finally order as required */
ORDER BY TOTAL_SCORE DESC, H.hacker_id
