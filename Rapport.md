    Parties du sujet traitées (et indication de la répartition dans le binôme) :

La première partie du sujet a été commencée par chacun.e des membres du binôme, chacun.e de son côté, pour pouvoir avoir une approche personnelle du sujet. Ainsi, la vérification de la syntaxe peut se tester dans le fichier : `/test/TestEOF` ou `/test/TestSyntErr`.
La vérification d'existance et de non-double déclaration des variables se fait dans le fichier `/src/checker.ml` et  peut se tester dans `/test/TestAngle`, `/test/TestDiv0` et `/test/TestBords` tester la division par 0 et les variables non déclarées avec les fichiers `/test/TestAngle`, `/test/TestDiv0` et `/test/TestBords`.

La seconde partie du sujet, ainsi que la plupart des suivantes se sont faites en binôme. Nous travaillions ensemble, dans la même la salle. Elle s'est faite sans difficultés particulières.

La troisième partie a été de la même façon réalisée en binôme. 

La quatrième partie se divise en trois questions.
La première concerne l'epaisseur et la couleur des traits, que l'on a, comme le reste, implémentée en binôme. Elle peut se tester aavec le fichier `/test/TestBatman`.
La seconde nous a posé un souci particulier de par son ambiguité. En effet, l'expression suivante :
`Si expression1 Alors Si expression2 Alors instruction1 Sinon instruction2` peut se comprendre de deux façons différentes.

Soit 1) `Si expression1 
        Alors 
            Si expression2
            Alors instruction1 
        Sinon instruction2`

Soit 2) `Si expression1 
        Alors 
            Si expression2
            Alors instruction1 
            Sinon instruction2`

En choisissant pour règle `%right ALORS SINON`, on privilégie la seconde version, si expression1 est fausse aucune instruction ne s'exécute.
Ce choix se vérifie avec le fichier /test/TestSiSansSinon où la première instruction de ce type n'est pas exécutée.
La troisième question a été étuidée, plus précisemment par un membre du binôme, Eugène. Seulement elle necéssitait de trop importantes modifications. Il fallit passer menhir en mode interprété, ajouter un point d'entrée ne concernant que les instructions, et modifier le mode d'interpétation. En outre, ces étapes nécessitaient de reconstruire une bonne partie du projet, et nous avons décidé de ne pas en tenir compte.