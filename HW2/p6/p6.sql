#6)  Pairs of drinkers who frequent the same bar (and possibly other bars)
#Comment:  Order pairs so you do not return <Bob, Ann>, <Ann, Bob>

select f1.drinker, f2.drinker
from  frequents f1 join frequents f2
on f1.bar=f2.bar and f1.drinker<f2.drinker
where f1.bar is not null and f2.bar is not null;

# 66 results returned