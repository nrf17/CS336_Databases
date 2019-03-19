#3) Beers which are liked by at most one drinker who frequents Cabana
#Comment:  Beers which are liked by none of the drinkers who frequent Cabana should be included.  This is the meaning of “at most”                       


select distinct beer
from likes
where beer not in (
	select distinct l1.beer
	from likes l1, likes l2, frequents f1, frequents f2
	where l1.drinker<>l2.drinker and l1.beer=l2.beer 
	and l1.drinker=f1.drinker and f1.bar='Cabana' 
	and l2.drinker=f2.drinker and f2.bar='Cabana');
 

#results:
#Hefeweizen
#Killian's
#Michelob Golden Draft
#Michelob Golden Draft Light
#Original Premium
#Original Premium Lager
#Original Premium Lager Dog
#Stolichnaya Citrona