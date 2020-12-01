USE convention;

CREATE TABLE convention.traductions
(
    idTraduction int(11) not null auto_increment PRIMARY KEY,
    codeTexte varchar(30) not null,
    codeLangue varchar(30) not null,
    texte varchar(10000) not null
)ENGINE = INNODB,
CHARSET = UTF8;
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("titre","EN","Welcome to the conventions website");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("animateurs","EN","Animators");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("conventions","EN","Conventions");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("emplacements","EN","Locations");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("salles","EN","Auditorium");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("visite","EN","Visit");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("visiteurs","EN","Visitors");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("inscription","EN","Inscription");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("connexion","EN","Login");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("deconnexion","EN","Logout");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("admin","EN","Admin");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("ajouterContenu","EN","Add");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("detailsContenu","EN","Details");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("modifierContenu","EN","Update");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("supprimerContenu","EN","Delete");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("nomVisiteur","EN","Visitor last name");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("prenomVisiteur","EN","Visitor fist name");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("adresseVisiteur","EN","Visitor adress");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("codePostalVisiteur","EN","Visitor postal code");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("villeVisiteur","EN","Visitor town");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("retour","EN","Return");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("ajouter","EN","Add");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("modifier","EN","Update");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("nomUtilisateur","EN","User last name");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("prenomUtilisateur","EN","User first name");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("mdpUtilisateur","EN","User password");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("adresseMailUtilisateur","EN","User mail adress");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("pseudoUtilisateur","EN","Username");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("inscription","EN","Inscription");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("connexion","EN","Login");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("contact","EN","Contact");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("calendrier","EN","Schedule");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("FAQ","EN","FAQ");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("reseaux","EN","Social media");


INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("titre","FR","Bienvenue sur le site des Conventions");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("animateurs","FR","Animateurs");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("conventions","FR","Conventions");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("emplacements","FR","Emplacements");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("salles","FR","Salles");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("visite","FR","Visite");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("visiteurs","FR","Visiteurs");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("inscription","FR","Inscription");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("connexion","FR","Connexion");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("deconnexion","FR","Déconnexion");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("admin","FR","Admin");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("ajouterContenu","FR","Ajouter");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("detailsContenu","FR","Details");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("modifierContenu","FR","Modifier");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("supprimerContenu","FR","Supprimer");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("nomVisiteur","FR","Nom du visiteur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("prenomVisiteur","FR","Prénom du visiteur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("adresseVisiteur","FR","Adresse du visiteur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("codePostalVisiteur","FR","Code postal du visiteur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("villeVisiteur","FR","Ville du visiteur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("retour","FR","Retour");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("ajouter","FR","Ajouter");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("modifier","FR","Modifier");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("nomUtilisateur","FR","Nom Utilisateur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("prenomUtilisateur","FR","Prénom Utilisateur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("mdpUtilisateur","FR","Mot de passe Utilisateur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("adresseMailUtilisateur","FR","Adresse mail Utilisateur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("pseudoUtilisateur","FR","Pseudo Utilisateur");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("inscription","FR","Inscription");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("connexion","FR","Connexion");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("contact","FR","Contact");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("calendrier","FR","Calendrier");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("FAQ","FR","FAQ");
INSERT INTO traductions(codeTexte,codeLangue,texte) VALUES ("reseaux","FR","Réseaux");