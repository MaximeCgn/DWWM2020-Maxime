/* 1 */
SELECT hotels.nomHotel, hotels.villeHotel
FROM hotels

/* 2 */
SELECT clients.nomClient,clients.prenomClient,clients.adresseClient,clients.villeClient
FROM clients
WHERE nomClient="WHITE"

/* 3 */
SELECT stations.nomStation,stations.altitudeStation
FROM stations
WHERE altitudeStation<100

/* 4 */
SELECT chambres.numChambre,chambres.capaciteChambre
FROM chambres
WHERE capaciteChambre>1

/* 5 */
SELECT clients.nomClient,clients.villeClient
FROM clients
WHERE villeClient!="Londres"

/* 6 */
SELECT stations.nomStation,hotels.nomHotel,hotels.categorieHotel
FROM hotels 
INNER JOIN stations ON hotels.idStation = stations.idStation

/* 7 */
SELECT chambres.numChambre,hotels.nomHotel,hotels.categorieHotel,hotels.villeHotel
FROM hotels 
INNER JOIN chambres ON hotels.idHotel=chambres.idHotel

/* 8 */
SELECT clients.nomClient,reservations.dateReservationSejour,reservations.dateDebutSejour, reservations.dateFinSejour
FROM reservations 
INNER JOIN clients ON reservations.idClient=clients.idClient

/* 9 */
SELECT chambres.numChambre,hotels.nomHotel,stations.nomStation
FROM chambres 
INNER JOIN hotels ON chambres.idHotel=hotels.idHotel 
INNER JOIN stations ON hotels.idStation=stations.idStation

/* 10 */
SELECT hotels.nomHotel,hotels.categorieHotel,hotels.villeHotel,chambres.numChambre,chambres.capaciteChambre
FROM hotels
INNER JOIN chambres ON hotels.idHotel=chambres.idHotel
WHERE chambres.capaciteChambre>1
AND hotels.villeHotel="Bretou"

/* 11 */
SELECT stations.nomStation,COUNT(idHotel) as "Nombre d'hotels"
FROM stations
INNER JOIN hotels ON stations.idStation=hotels.idStation
GROUP BY stations.nomStation

/* 12 */
SELECT stations.nomStation, COUNT(idChambre) as "Nombre de chambres"
FROM stations
INNER JOIN hotels ON stations.idStation=hotels.idStation
INNER JOIN chambres ON chambres.idHotel=hotels.idHotel
GROUP BY stations.nomStation

/* 13 */
SELECT stations.nomStation,COUNT(idChambre) as "Nombre de chambres avec une capacité >1"
FROM stations
INNER JOIN hotels ON stations.idStation=hotels.idStation
INNER JOIN chambres ON chambres.idHotel=hotels.idHotel
WHERE chambres.capaciteChambre>1
GROUP BY stations.nomStation

/* 14 */
SELECT DISTINCT hotels.nomHotel as "Hotels ou Mr Squire a effectué une réservation"
FROM hotels
INNER JOIN chambres ON hotels.idHotel=chambres.idHotel
INNER JOIN reservations ON chambres.idChambre=reservations.idChambre
INNER JOIN clients ON reservations.idClient=clients.idClient
WHERE clients.nomClient="SQUIRE"

/* 15 */
SELECT stations.nomStation,ROUND(AVG(DATEDIFF(reservations.dateFinSejour,reservations.dateDebutSejour))) as "Durée moyenne de réservations (en jours)"
FROM stations
INNER JOIN hotels ON stations.idStation=hotels.idStation
INNER JOIN chambres ON hotels.idHotel=chambres.idHotel
INNER JOIN reservations ON chambres.idChambre=reservations.idChambre
GROUP BY stations.nomStation

/* Création de vue*/
/* 16 */
CREATE VIEW StationChambre AS
SELECT stations.idStation,stations.nomStation,stations.altitudeStation,
       hotels.nomHotel,hotels.categorieHotel,hotels.adresseHotel,hotels.villeHotel,hotels.idHotel,
       chambres.idChambre, chambres.numChambre, chambres.typeChambre, chambres.capaciteChambre
FROM stations
INNER JOIN hotels ON stations.idStation=hotels.idStation
INNER JOIN chambres ON hotels.idHotel=chambres.idHotel

/* 17 */
CREATE VIEW StationChambreLeft AS
SELECT stations.idStation,stations.nomStation,stations.altitudeStation,
       hotels.nomHotel,hotels.categorieHotel,hotels.adresseHotel,hotels.villeHotel,hotels.idHotel,
       chambres.idChambre, chambres.numChambre, chambres.typeChambre, chambres.capaciteChambre
FROM stations
LEFT JOIN hotels ON stations.idStation=hotels.idStation
LEFT JOIN chambres ON hotels.idHotel=chambres.idHotel

/*Creation de procédure*/
/* 18 */
ALTER TABLE reservations ADD archive varchar(10)

/* 19 */
DELIMITER |
    CREATE PROCEDURE archivage()
        BEGIN
            UPDATE reservations
            SET archive="oui"
            WHERE reservations.dateFinSejour<NOW();
        END |
DELIMITER ;

