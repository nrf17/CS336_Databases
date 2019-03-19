select distinct bar
from frequents
where bar IN (
	select distinct f.bar 	 from frequents f  where f.drinker = 'John' or f.drinker = 'Rebecca') 
and bar NOT IN( 	 
	select distinct f1.bar   from frequents f1, frequents f2  where f1.bar = f2.bar and f1.drinker = 'John' and     f2.drinker= 'Rebecca')