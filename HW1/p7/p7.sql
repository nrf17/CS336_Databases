select l1.drinker
from likes l1, likes l2
where l1.drinker = l2. drinker
AND l1.beer = 'Hefeweizen'
AND l2.beer = "Killian's" 