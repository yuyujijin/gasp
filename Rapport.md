    Parties du sujet traitées (et indication de la répartition dans le binôme) :

La première partie du sujet a été commencée par chacun.e des membres du binôme, chacun.e de son côté, pour pouvoir avoir une approche personnelle du sujet. Ainsi, la vérification de la syntaxe peut se tester dans le fichier : `/test/TestEOF` ou `/test/TestSyntErr`.
La vérification d'existance et de non-double déclaration des variables se fait dans le fichier `/src/checker.ml` et  peut se tester dans `/test/TestAngle`, `/test/TestDiv0` et `/test/TestBords`. La division par 0 peut se tester via `/test/TestDiv0`.

La seconde partie du sujet, ainsi que la plupart des suivantes se sont faites en binôme. Nous travaillions ensemble, dans la même la salle. Elle s'est faite sans difficultés particulières. Le `Tant que ... Faire ...` peut se tester avec `/test/TestTantQue`, tandis que le `Si ... Alors ... Sinon ...` peut se tester avec `/test/TestSiSinon`, si le x, ligne 5 est égal à 1 on obtient baman, sinon un H.

La troisième partie a été de la même façon réalisée en binôme. On peut tester les nombres négatifs présents avec le fichier `/test/TestH`.

La quatrième partie *(les extensions)* se divise en plusiseurs questions :
- La première concerne l'epaisseur et la couleur des traits, que l'on a, comme le reste, implémentée en binôme. Elle peut se tester avec le fichier `/test/TestBatman`.
- La seconde nous a posé un souci particulier de par son ambiguité. En effet, l'expression suivante :

`Si expression1 Alors Si expression2 Alors instruction1 Sinon instruction2` peut se comprendre de deux façons différentes.  
    1)Si expression1  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alors  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Si expression2  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alors instruction1  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sinon instruction2  
    **Ici, le conflit est résolu en avec un `reduce`**  
    2)Si expression1  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alors  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Si expression2  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alors instruction1  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sinon instruction2  
    **Ici, le conflit est résolut avec un `shift`**

En choisissant pour règle `%right ALORS SINON`, nous donnons la même priorité à `ALORS` ainsi qu'à `SINON`, et décidons de résoudre les conflits par l'associativé à droite, donc un `shift`. On privilégie donc la seconde version : si expression1 est fausse aucune instruction ne s'exécute.
Ce choix se vérifie avec le fichier `/test/TestSiSansSinon` où la première instruction de ce type n'est pas exécutée.
- La troisième question a été étudiée, plus précisemment par un membre du binôme, Eugène. Seulement elle necéssitait de trop importantes modifications. Il fallait passer menhir en mode interprété, ajouter un point d'entrée ne concernant que les instructions, et modifier le mode d'interpétation. En outre, ces étapes nécessitaient de reconstruire une bonne partie du projet, et nous avons décidé de ne pas en tenir compte.
- Enfin, nous avons également choisi d'implémenter les opérateurs d'inéquation (>, <, <=, >=), qui retournent 0 ou 1, selon le cas.