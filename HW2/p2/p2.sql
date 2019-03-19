#2) Bars which serve no beer(s) which Joe likes  (you can use one of the outer joins if you want)


select distinct b.bar
from sells b
where not exists (select * from sells s, likes l where s.bar=b.bar and s.beer=l.beer and l.drinker='Joe');


#results: Britannia Arms
#Cabana
#Caravan
#Club 175
#Coconut Willie's Cocktail Lounge
#Gecko Grill
#Giza Hookah Lounge
#Seven Bamboo
#The Blank Club
#The Shark and Rose
#Blue Angel
#Eulipia
#Blue Tattoo
#The Backbeat
#The B-Hive