CREATE USER 'util1'@'%' IDENTIFIED BY 'HarryCouver';

CREATE USER 'util2'@'%' IDENTIFIED BY 'GarcinLazare';

CREATE USER 'util3'@'%' IDENTIFIED BY 'GuyYiotine';

GRANT ALL PRIVILEGES ON exercice3.* TO 'util1'@'%' 
IDENTIFIED BY 'HarryCouver';

GRANT SELECT ON exercice3.* TO 'util2'@'%'
IDENTIFIED BY 'GarcinLazare';

GRANT SELECT ON exercice3.etudiants TO 'util3'@'%'
IDENTIFIED BY 'GuyYiotine';