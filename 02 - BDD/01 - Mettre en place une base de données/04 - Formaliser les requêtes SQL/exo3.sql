/* A */
SELECT
    UPPER(nomEtudiant) as "Nom de l'étudiant",
    CONCAT(
        UPPER(LEFT(et.prenomEtudiant, 1)),
        LOWER(SUBSTRING(et.prenomEtudiant, 2))
    ) as "Prénom de l'étudiant",
    dateNaissanceEtudiant as "Date de naissance de l'étudiant"
FROM
    etudiants
WHERE
    dateNaissanceEtudiant < (
        SELECT
            dateNaissanceEtudiant
        FROM
            etudiants
        WHERE
            nomEtudiant = "LECLERCQ"
            AND prenomEtudiant = "JULES"
    )
    /* B */
SELECT
    UPPER(et.nomEtudiant) as "Nom de l'étudiant",
    CONCAT(
        UPPER(LEFT(et.prenomEtudiant, 1)),
        LOWER(SUBSTRING(et.prenomEtudiant, 2))
    ) as "Prénom de l'étudiant",
    an.note
FROM
    avoir_note as an
    INNER JOIN etudiants as et ON an.idEtudiant = et.idEtudiant
WHERE
    an.note > (
        SELECT
            AVG(an.note)
        FROM
            avoir_note as an
        WHERE
            an.idEpreuve = 4
    )
    AND an.idEpreuve = 4
    /* C */
SELECT
    UPPER(et.nomEtudiant) as "Nom de l'étudiant",
    CONCAT(
        UPPER(LEFT(et.prenomEtudiant, 1)),
        LOWER(SUBSTRING(et.prenomEtudiant, 2))
    ) as "Prénom de l'étudiant",
    an.note
FROM
    avoir_note as an
    INNER JOIN etudiants as et ON an.idEtudiant = et.idEtudiant
WHERE
    an.note >= 12
    /* D */
SELECT
    UPPER(et.nomEtudiant) as "Nom de l'étudiant",
    CONCAT(
        UPPER(LEFT(et.prenomEtudiant, 1)),
        LOWER(SUBSTRING(et.prenomEtudiant, 2))
    ) as "Prénom de l'étudiant",
    an.note
FROM
    avoir_note as an
    INNER JOIN etudiants as et ON an.idEtudiant = et.idEtudiant
WHERE
    an.note > (
        SELECT
            an.note
        FROM
            avoir_note as an
            INNER JOIN etudiants as et ON an.idEtudiant = et.idEtudiant
        WHERE
            et.nomEtudiant = "DUPONT"
            AND et.prenomEtudiant = "LUC"
            AND an.idEpreuve = 4
    )
    AND an.idEpreuve = 4
    /* E */
SELECT
    UPPER(et.nomEtudiant) as "Nom de l'étudiant",
    CONCAT(
        UPPER(LEFT(et.prenomEtudiant, 1)),
        LOWER(SUBSTRING(et.prenomEtudiant, 2))
    ) as "Prénom de l'étudiant",
    an.note
FROM
    avoir_note as an
    INNER JOIN etudiants as et ON an.idEtudiant = et.idEtudiant
WHERE
    an.note IN (
        SELECT
            an.note
        FROM
            avoir_note as an
            INNER JOIN etudiants as et on an.idEtudiant = et.idEtudiant
        WHERE
            et.nomEtudiant = "DUPONT"
            AND et.prenomEtudiant = "LUC"
    )
    /* F */
ALTER TABLE
    etudiants
ADD
    hobby varchar(20) not null;

ALTER TABLE
    etudiants
ADD
    CONSTRAINT df_hobby DEFAULT "SPORT" FOR hobby
    /* G */
ALTER TABLE
    etudiants
ADD
    NEWCOL int;

ALTER TABLE
    etudiants DROP COLUMN NEWCOL
    /* H */
ALTER TABLE
    etudiants
MODIFY
    prenomEtudiant varchar(20) NULL
ALTER TABLE
    etudiants
MODIFY
    prenomEtudiant varchar(20) NOT NULL
    /* I */
INSERT INTO
    epreuves (
        idEpreuve,
        libelleEpreuve,
        idEnseignantEpreuve,
        idMatiereEpreuve,
        dateEpreuve,
        CoefficientEpreuve,
        anneeEpreuve
    )
VALUES
    (7, 'interro écrite', 9, 1, '1996-10-21', 1, NULL);

INSERT INTO
    avoir_note (idAvoirNote, idEtudiant, idEpreuve, note)
VALUES
    (null, 1, 7, 10);

INSERT INTO
    avoir_note (idAvoirNote, idEtudiant, idEpreuve, note)
VALUES
    (null, 2, 7, 08);

INSERT INTO
    avoir_note (idAvoirNote, idEtudiant, idEpreuve, note)
VALUES
    (null, 3, 7, 05);

INSERT INTO
    avoir_note (idAvoirNote, idEtudiant, idEpreuve, note)
VALUES
    (null, 4, 7, 09);

INSERT INTO
    avoir_note (idAvoirNote, idEtudiant, idEpreuve, note)
VALUES
    (null, 17, 3, 15);

/* J */
UPDATE
    avoir_note
SET
    note = 07
WHERE
    idEtudiant = 3
    AND idEpreuve = 7
    /* K */
UPDATE
    avoir_note
SET
    note = note + 1
WHERE
    idEtudiant = 1
    AND idEpreuve = 7
    /* L */
DELETE FROM
    avoir_note
WHERE
    idEpreuve = 7;

DELETE FROM
    epreuves
WHERE
    idEpreuve = 7
    /* M */
    /*On aurait pu changer le mode de restriction dans " ON DELETE" pour le mettre à "Cascade" */
    /* N */
SELECT
    idEtudiant
from
    etudiants
WHERE
    nomEtudiant = "MARKE"
SELECT
    matieres.idMatiere
FROM
    matieres
WHERE
    nomMatiere = "BD"
SELECT
    epreuves.idEpreuve
FROM
    epreuves
WHERE
    idMatiere = (
        SELECT
            matieres.idMatiere
        FROM
            matieres
        WHERE
            nomMatiere = "BD"
    )
    /*Réponse juste en dessous*/
UPDATE
    avoir_note
SET
    note = note -3
WHERE
    idEtudiant = (
        SELECT
            idEtudiant
        from
            etudiants
        WHERE
            nomEtudiant = "MARKE"
    )
    AND idEpreuve IN (
        SELECT
            epreuves.idEpreuve
        FROM
            epreuves
        WHERE
            idMatiereEpreuve = (
                SELECT
                    matieres.idMatiere
                FROM
                    matieres
                WHERE
                    nomMatiere = "BD"
            )
    )
    /* O */
INSERT INTO
    `avoir_note`(`idAvoirNote`, `idEtudiant`, `idEpreuve`, `note`)
VALUES
    (
        null,
        (
            SELECT
                idEtudiant
            FROM
                etudiants
            WHERE
                nomEtudiant = "DEWA"
        ),
        4,
        (
            SELECT
                AVG(note) * 0.9
            FROM
                avoir_note as a
            WHERE
                idEpreuve = 4
        )
    )
    /* P */
INSERT INTO
    `etudiants`(
        `idEtudiant`,
        `nomEtudiant`,
        `prenomEtudiant`,
        `anneeEtudiant`,
        `HOBBY`
    )
VALUES
    (25, "DARTE", "remy", 1, "SCULPTURE")