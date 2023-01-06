# Projet d’examen 2022-2023

> Ce document fait partie de votre projet et doit être complété comme demandé dans l'énoncé disponible sur [Moodle](https://moodle.ecolevirtuelle.be/course/view.php?id=29711) [ici](https://moodle.ecolevirtuelle.be/pluginfile.php/579274/mod_resource/content/5/Enonce-Laboratoire-2022-2023.pdf).

>My Fridge

![image](https://user-images.githubusercontent.com/98748481/203734310-aa3bde77-47c7-4027-8f2e-03609cc33dc5.png)

>Présentation :

"My Fridge" est une application qui vous propose des recettes de cuisine en fonction des aliments stockés dans votre frigo. Son utilisation est simple, on répertorie tous les aliments
de notre frigo dans l'application et l'application nous suggère des recettes basés sur les aliments étant à notre disposition : classé de vert (tout les ingrédients) à rouge (aucun ingrédients).

>fenêtres :

1)	fenêtre de login
2) 	fenêtre "home" reprenant un résumé de notre frigo ( à gauche ) et des recettes disponibles.
3)	fenêtre de gestion du frigo ( swipe pour supprimer et bouton "+" pour ajouter aliments parmis une liste précomposée.
4) 	fenêtre de paramètres pour choisir des allergies par exemple.
5) 	fenêtre permetant d'ajouter des aliments à une liste de course.

>fonctionnalités supplémentaire :

- sur la recette, spécifier le nombre de personnes pour faire une règle de 3.
- les recettes n'étant pas verte, ajouter les aliments à la liste de course.
- mettre des recettes en favoris.

>Analyse de l'existant :

Il existe déjà plusieurs applications de ce style. Par exemple "EmptyMyFridge" est la plus aboutie actuellement, ce qui lui manque est à vrai dire un coup de comm'
...MyFridge tentera de soulever ce défi

![image](https://user-images.githubusercontent.com/98748481/203736297-dde6bb58-4bf1-4e1e-ac0a-5b16ba5ac6d6.png)

>Widgets utiles : 

-safe area

-scaphone

-singlechildscrollView => cutting design super à la mode ! 

-Jsondecode (fonction) /postman requête =>Transformer objet Json en Média

-Utilisation pour slide bar de base de données 

-pageview_builder pour gérer le slider, pour le nombres d’éléments, si on veut qu’il scroll horizontalement ou verticalement, et dire a combien de % le dernier élément du slider sera afficher et en vue par l’utilisateur.

-ItemBuilder gérer comment vont être définis les différents éléments du slider, puis permet de retourner l’élément sur lequel on se trouvera en fonction de l’index.
-widget stack pour empiler des éléments dans une colonne.

-center pour mettre les éléments au milieu de l’écran, utiliser pour la généraliser sur ios ou android sera la même chose.

-Bonus : mettre en multilangue, récup la langue du tel et pour le convertir en un autre format -> utilisation de intel.

-mettre des widgets dans un seul pour réduire le code

-page view builder, c’est bien, pour utiliser le slider, listViewBuilder pour un scroll down sur toute la page, bien bien bien bien mieux que l’autre.

-gestureDetector, c’est bien, pour identifier tout ce qui est fait sur une fenêtre. 

-router => MaterialAPP -> initialRoute -> routes ( vue si scafode ) navigator.pop = retourner en arrière push.named

>FAIRE UNE SITE MAP
