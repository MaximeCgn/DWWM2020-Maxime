
DELIMITER |
CREATE procedure majuscules()
 BEGIN
        UPDATE etudiants SET nomEtudiant = UCASE(nomEtudiant), prenomEtudiant = UCASE(prenomEtudiant) ;
        UPDATE enseignants SET nomEnseignant = UCASE(nomEnseignant), prenomEnseignant = UCASE(prenomEnseignant);
 END |
DELIMITER ;