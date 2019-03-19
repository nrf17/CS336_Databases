#5) Bars which serve all beers that Cabana serves and possibly more

select distinct s1.bar
from sells s1
where s1.bar<>'Cabana' and not exists(
	select s2.beer from sells s2 where not exists(
		select s3.beer
		from sells s3, sells s4
		where s4.bar='Cabana' 
        and s4.beer=s3.beer and s3.bar=s1.bar)
	);
  

#results:
#Britannia Arms
#Caravan
#Club 175
#Coconut Willie's Cocktail Lounge
#Gecko Grill
#Giza Hookah Lounge
#Seven Bamboo
#The Blank Club
#The Shark and Rose
