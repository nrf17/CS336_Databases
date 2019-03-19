select distinct f.drinker, f.bar
from frequents f, sells s, likes l
where l.drinker=f.drinker and s.beer = l.beer and f.bar=s.bar;