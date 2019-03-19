select distinct frequents.drinker 
from frequents, sells, likes 
where frequents.bar = sells.bar 
AND sells.beer = likes.beer 
AND likes.drinker = frequents.drinker