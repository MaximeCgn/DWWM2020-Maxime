<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Titre de la page</title>
    <link rel="stylesheet" href="style.css">
    

</head>

<body class="colonne">
    <div>
        <h1>Formulaire</h1>

    </div>
    <div class="contenu">
        <div class="espace"></div>
        <fieldset>
            <legend>Vos informations</legend>
            <form method="POST" action="action.php">
                <div class="marge">
                    <div>
                        <h3>Nom :</h3>
                    </div>
                        <input type="text" id="nom" title="3 caractères minimum, lettres uniquements" required />
                        <div class="question">
                            <img class="infoBulle" src="question.png">
                            <div class="cache" >Champ obligatoire, 3 caractères minimum, lettres uniquements.</div>
                        </div>
                        <div class="taille">
                        <img src="" class="correct">
                        </div>
                        <div class="pasCentrer" id="erreurNom"></div>
                </div>
                
                <div class="marge">
                    <div>
                        <h3>Date de naissance :</h3>
                    </div>
                        <input type="date" id="ddn" required />
                        <div class="question">
                            <img class="infoBulle" src="question.png">
                            <div class="cache" >Champ obligatoire.</div>
                        </div>
                        <div class="taille">
                        <img src="" class="correct">
                        </div>
                        <div class="pasCentrer" id="erreurDDN"></div>
                </div>
                
                <div class="marge">
                    <div>
                        <h3>Code Postal :</h3>
                    </div>
                        <input type="number" title="5 chiffres attendus" id="postal"  />
                        <div class="question">
                            <img class="infoBulle" src="question.png">
                            <div class="cache">Champ obligatoire, 5 chiffres attendus.</div>
                        </div>
                        <div class="taille">
                        <img src="" class="correct">
                        </div>
                        <div class="pasCentrer" id="erreurCP"></div>
                </div>
                <div class="marge">
                    <div></div>
                    <input type="submit" id="submit" disabled />
                    <div></div>
                </div>
            </form>
        </fieldset>
        <div class="espace"></div>
    </div>
    <script src="script.js"></script>
</body>
