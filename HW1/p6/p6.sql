select distinct s.bar 
from sells s, likes l 
where s.beer = l.beer
and (l.drinker = 'John' OR l.drinker = 'Rebecca')
and s.price < 5
OR
select distinct bar
from sells
where sells.price < 5
AND sells.beer IN (
	select beer   from likes where likes.drinker = 'Rebecca' OR likes.drinker = 'John') 