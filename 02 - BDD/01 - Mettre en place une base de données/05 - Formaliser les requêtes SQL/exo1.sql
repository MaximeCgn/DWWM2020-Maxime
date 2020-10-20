/* A */
SELECT idClient, nomClient, prenomClient, dateEntreeClient
FROM clients;

/* B */
SELECT nomClient
FROM clients;

/* C */
SELECT DISTINCT dateCommande
FROM commandes;

/* D */
SELECT prenomClient
FROM clients
WHERE prenomClient = "sophie";

/* E */
SELECT idArticle, quantiteCommande
FROM commandes
WHERE idClient = 1;

/* F */
SELECT UPPER (nomClient)
FROM clients;

/* G */
SELECT CONCAT(UPPER(LEFT(nomClient,1)), SUBSTRING(nomClient,2))
FROM clients;

/* H */
SELECT nomClient
FROM clients
WHERE LENGTH(nomClient)=5; /*La fonction "LEN" n'est pas comprise par MySQL, mais "LENGTH" fonctionne

/* I */
SELECT nomClient
FROM clients
WHERE nomClient like "T%"
OR nomClient like "__L%";

/* J */
SELECT commandes.idClient, commandes.idCommande, commandes.dateCommande, DATE_ADD(commandes.dateCommande,INTERVAL 15 DAY) as datePaiement
FROM commandes;

/* K */
SELECT NOW()

/* L */
SELECT DATEDIFF(NOW(), dateEntreeClient)/365 as "Année d'ancienneté"
FROM clients;

/* M */
SELECT commandes.idClient, MAX(commandes.quantiteCommande) as "Quantité maximale commandée"
FROM commandes;

/* N */
SELECT commandes.idClient, SUM(commandes.quantiteCommande) as "Quantité maximale commandée par le Client 1"
FROM commandes
WHERE idClient = 1;

/* O */
SELECT commandes.idClient, AVG(commandes.quantiteCommande) as "Quantité moyenne commandée par le Client 2"
FROM commandes
WHERE idClient = 2;

/* P */
SELECT nomClient, prenomClient
FROM clients
ORDER BY nomClient, prenomClient ;

/* Q */
SELECT prixArticle
FROM articles
ORDER BY prixArticle DESC;
