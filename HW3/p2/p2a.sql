#2. Find average score  of top 10  restaurants and compare it with average score of the bottom 10 restaurants according to trip advisor ranking.

#Top 10

SELECT avg(d.bottom_10_score) as avg_score_bottom10
FROM (
	SELECT RESTAURANT, AVG(SCORE)as bottom_10_score, RANK 
	FROM TRIPADVISOR
	GROUP BY RESTAURANT
	ORDER bY RANK
	LIMIT 10
	)
as d



#Top 10 average: 4.1