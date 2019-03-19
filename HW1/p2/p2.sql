select distinct l1.drinker
from likes l1, likes l2
where l1.beer=l2.beer and l1.drinker<>l2.drinker and l2.drinker='John'