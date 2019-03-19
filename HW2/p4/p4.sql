#4)  Drinkers who frequent no bars that Tom frequents

select f.drinker
from frequents f
where not exists(
	select *
	from frequents f1, frequents f2
	where f1.drinker='Tom'
	and f2.drinker=f.drinker
	and f1.bar=f2.bar);


#results: null