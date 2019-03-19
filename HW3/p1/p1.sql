#1. For each restaurant, how many 3-star reviews did each get?  List these restaurants in tripadvisor rank order from top to bottom.

SELECT RESTAURANT, COUNT(*)
FROM TRIPADVISOR
WHERE REVIEW_STARS = 3
GROUP BY (RESTAURANT)
ORDER BY (RANK)


#Results:
#Ritz Restaurant	8
#Prologue Restaurant & Bar	7
#Pierogarnia Mandu	21
#Familia Bistro	3
#Wine Bar & Restaurant Literacka	5
#Jozef K	3
#Retro Cafe	20
#Flisak 76	2
#Monte Carlo Pizza i Wino	2
#Restaurant Metamorfoza	10
#Sempre Pizza e Vino - Targ Rybny	26
#Nova Pierogova	8
#Pueblo	19
#LULA food & drink	2
#Mercato restaurant	5
#Original Burger	44
#Pikawa	8
#Avocado Vegan and Eko	1
#Restauracja Targ Rybny	36
#Goldwasser	50
#A La Francaise	6
#Restauracja Kokieteria	8
#Cafe Factotum	1
#Hard Rock Cafe	42
#Bellevue Restaurant	9
#PobiteGary	8
#Oliwa Do Ognia	3
#Kubicki	40
#Bar Pod Ryba	13
#The Red Door	7
#Surf Burger	4
#Swojski Smak	14
#Drukarnia Cafe	1
#Dominikanska Restaurant	2
#La Pampa Steak House	30
#Pod Lososiem Restaurant	17
#P&M Pasta and More	5
#Bioway	4
#Gdanski Bowke	28
#Tawerna Mestwin	3
#La Famiglia Pizza	3
#Billy's American Restaurant	31
#Cala Naprzod	8
#Pyra Bar	9
#Cafe Kamienica	2
#Szafarnia 10	2
#W Starym Kadrze	3
#Fellini	1
#San Marco Ristorante E Pizzeria	1
#Restauracja Euro	1