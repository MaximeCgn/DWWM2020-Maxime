/* PARTIE 1 */
/* 1 */
SELECT * FROM employe

/* 2 */
SELECT * FROM dept

/* 3 */
SELECT nom, dateemb, nosup, nodep, salaire
FROM employe

/* 4 */
SELECT titre
FROM employe

/* 5 */
SELECT DISTINCT titre
FROM employe

/* 6 */
SELECT nom, noemp, nodep
FROM employe
WHERE titre="secrétaire"

/* 7 */
SELECT nom, nodept
FROM dept
WHERE nodept>40

/* 8 */
SELECT nom, prenom
FROM employe
WHERE nom<prenom

/* 9 */
SELECT nom, salaire, nodep
FROM employe
WHERE titre="représentant"
AND nodep=35
AND salaire>20000

/* 10 */
SELECT nom,salaire, titre
FROM employe
WHERE titre="Représentant" OR titre="Président"

/* 11 */
SELECT nom, titre, nodep, salaire
FROM employe
WHERE nodep=34 AND (titre="Représentant" OR titre="secrétaire" )

/* 12 */
SELECT nom,titre, nodep, salaire
FROM employe
WHERE titre="Représentant" or (titre="Secrétaire" AND nodep=34)

/* 13 */
SELECT nom, salaire
FROM employe
WHERE salaire BETWEEN 20000 AND 30000

/* 15 */ 
SELECT nom
FROM employe
WHERE nom LIKE "H%"

/* 16 */
SELECT nom
FROM employe
WHERE nom LIKE "%N"

/* 17 */
SELECT nom
FROM employe
WHERE LOCATE("U",nom)=3

/* 18 */
SELECT salaire, nom
FROM employe
WHERE nodep=41
ORDER BY salaire

/* 19 */
SELECT salaire, nom
FROM employe
WHERE nodep=41
ORDER BY salaire DESC

/* 20 */
SELECT titre, salaire, nom
FROM employe
ORDER BY titre, salaire DESC

/* 21 */
SELECT tauxcom, salaire, nom
FROM employe
ORDER BY tauxcom

/* 22 */
SELECT nom,salaire, tauxcom, titre
FROM employe
WHERE tauxcom IS NULL

/* 23 */
SELECT nom,salaire, tauxcom, titre
FROM employe
WHERE tauxcom IS NOT NULL

/* 24 */
SELECT nom, salaire, tauxcom, titre
FROM employe
WHERE tauxcom <15

/* 25 */
SELECT nom,salaire, tauxcom, titre
FROM employe
WHERE tauxcom>15

/* 26 */
SELECT nom, salaire, (salaire*tauxcom) as "Taux de commission", tauxcom
FROM employe
WHERE tauxcom IS NOT NULL

/* 27 */
SELECT nom,salaire, tauxcom, (salaire*tauxcom) as "Taux de commission"
FROM employe
WHERE tauxcom IS NOT NULL
ORDER BY tauxcom

/* 28 */
SELECT CONCAT(nom," ",prenom) as "Nom et Prénom"
FROM employe

/* 29 */
SELECT SUBSTRING(nom,1,5)
FROM employe

/* 30 */
SELECT nom, LOCATE("R",nom) as "Rang de la lettre R"
FROM employe

/* 31 */
SELECT nom, UPPER(nom) as "Nom en majuscule", LOWER(nom) as "Nom en minuscule"
FROM employe
WHERE nom="Vrante"

/* 32 */
SELECT nom, LENGTH(nom) as "Nombre de caractères du nom"
FROM employe

/* PARTIE 2*/
/* 1 */
SELECT employe.prenom, dept.noregion
FROM employe INNER JOIN dept ON employe.nodep=dept.nodept

/* 2 */
SELECT dept.nodept as "Numéro du département", dept.nom as "Nom du département", employe.nom as "Nom de l'employé"
FROM employe INNER JOIN dept ON employe.nodep=dept.nodept
ORDER BY dept.nodept

/* 3 */
SELECT employe.nom as "Nom de l'employé", dept.nom
FROM employe INNER JOIN dept ON employe.nodep=dept.nodept
WHERE dept.nom = "Distribution"

/* 4 */
SELECT employe.nom as "Nom de l'employé", employe.salaire as "Salaire de l'employé", (SELECT employe.nom FROM employe WHERE titre="Président") as "Nom du patron", (SELECT employe.salaire FROM employe WHERE titre="Président") as "Salaire du Patron" 
FROM employe INNER JOIN dept ON employe.nodep=dept.nodept
WHERE "Salaire de l'employé">"Salaire du Patron"

/* 5 */
SELECT employe.nom, employe.titre
FROM employe
WHERE titre = (SELECT titre FROM employe WHERE nom="amartakaldire")

/* 6 */
SELECT employe.nom, employe.salaire, employe.nodep
FROM employe
WHERE 
ORDER BY employe.nodep, employe.salaire

/* 12 */
SELECT titre, COUNT(*) as "Nombre d'employe pour chaque titre"
FROM employe
GROUP BY titre

/* 13 */
SELECT AVG(salaire) as "Moyenne des salaires", SUM(salaire) as "Somme des salaires", noregion as "Numéro de région"
FROM employe INNER JOIN dept ON employe.nodep=dept.nodept
GROUP BY noregion

/* 14 */
SELECT nodep as "Numéro de départements ayant au moins 3 employés"
FROM employe
GROUP BY nodep
HAVING COUNT(noemp)>=3

/* 15  C FAUX JE SKIP*/
SELECT UPPER(LEFT(nom,1)) as "Initile de l'employé"
FROM employe
GROUP BY nom
HAVING COUNT("Initile de l'employé")>=3

/* 16 */
SELECT max(salaire) as "Salaire Maximum", min(salaire) as "Salaire minimum", (max(salaire)-min(salaire)) as "Ecart entre les deux"
from employe