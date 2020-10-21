/* Exercice 2 */
/* La colonne "Commande total" a été ajouté. Elle a été calculée en multipliant la quantite commandée par le prix de l'article commandée*/

/* A */
SELECT MAX(commandes.quantiteCommande*articles.prixArticle) as "Prix total maximum", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient INNER JOIN articles ON commandes.idArticle = articles.idArticle

/* B */
SELECT FLOOR(AVG(commandes.quantiteCommande*articles.prixArticle)) as "Motant moyen des commandes", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient INNER JOIN articles ON commandes.idArticle = articles.idArticle

/* C */
SELECT MIN(commandes.cde_total) as "Prix total minimum", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient

/* D */
SELECT COUNT(*) as "Nombre de commandes passées"
FROM commandes

/* E */
SELECT FLOOR(AVG(commandes.quantiteCommande*articles.prixArticle)) as "Motant moyen des commandes", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient INNER JOIN articles ON commandes.idArticle = articles.idArticle
GROUP BY clients.idClient

/* F */
SELECT MAX(commandes.quantiteCommande*articles.prixArticle) as "Prix total maximum", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient INNER JOIN articles ON commandes.idArticle = articles.idArticle
GROUP BY clients.idClient

/* G */
SELECT COUNT(commandes.idCommande) as "Nombre de commandes passées", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient
GROUP BY clients.idClient

/* H */
SELECT FLOOR(AVG(commandes.quantiteCommande)) as "Nombre d'articles commandés en moyenne", UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient
GROUP BY clients.idClient

/* I */
SELECT FLOOR(AVG(commandes.quantiteCommande)) as "Nombre d'articles commandés en moyenne", articles.descriptionArticle as "Description de l'article"
FROM commandes INNER JOIN articles ON commandes.idArticle=articles.idArticle
GROUP BY articles.idArticle

/* J */
SELECT SUM(commandes.quantiteCommande) as "Nombre d'articles commandés en moyenne", articles.descriptionArticle as "Description de l'article"
FROM commandes INNER JOIN articles ON commandes.idArticle=articles.idArticle
GROUP BY articles.idArticle

/* K */
SELECT FLOOR(AVG(commandes.quantiteCommande)) as "Nombre moyen d'articles commandées",  UPPER(clients.nomClient) as "Nom du Client", CONCAT(UPPER(LEFT(clients.prenomClient,1)), LOWER(SUBSTRING(clients.prenomClient,2))) as "Prénom du Client", commandes.dateCommande as "Date de la commande"
FROM commandes INNER JOIN clients ON commandes.idClient=clients.idClient
GROUP BY clients.nomClient, clients.prenomClient, commandes.dateCommande

/* L */
SELECT COUNT(commandes.idCommande) as "Quantité commandée", commandes.dateCommande as "Date de la commande"
FROM commandes
GROUP BY commandes.dateCommande

/* M */
SELECT COUNT(clients.idClient) as "Nombre de clients"
FROM clients

/* N */
SELECT COUNT(DISTINCT commandes.idClient) as "Nombre de clients différents"
FROM commandes 

/* O */
SELECT COUNT(DISTINCT commandes.idArticle) as "Nombre d'articles différents commandés"
FROM commandes

/* P */
SELECT COUNT(DISTINCT commandes.dateCommande) as "Nombre de jours de commandes différents"
FROM commandes