#2. Find average score  of top 10  restaurants and compare it with average score of the bottom 10 restaurants according to trip advisor ranking.


#Bottom 10

SELECT avg(d.bottom_10_score) as avg_score_bottom10
FROM (
	SELECT RESTAURANT, AVG(SCORE)as bottom_10_score, RANK 
	FROM TRIPADVISOR
	GROUP BY RESTAURANT
	ORDER BY RANK DESC
	LIMIT 10
	)
as d


#Bottom 10 Average: 3.7 