#1)Drinkers who do not like any beer 

select d.name
from drinkers d
where d.name not in (select l.drinker from likes l);

#results: Bob,Erik,Herb,Justin,Rebecca,Tom