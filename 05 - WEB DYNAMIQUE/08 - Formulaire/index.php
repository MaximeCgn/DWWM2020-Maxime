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
                        <h3>Civilité :</h3>
                    </div>
                    <div>
                        <div>
                            <input type="radio" id="M" name="civilite" value="M." checked />
                            <label for="M">M.</label>
                        </div>
                        <div>
                            <input type="radio" id="Mme" name="civilite" value="Mme" />
                            <label for="Mme">Mme</label>
                        </div>
                        <div>
                            <input type="radio" id="Autre" name="civilite" value="Autre" />
                            <label for="Autre">Autre</label>
                        </div>
                    </div>
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" ></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Nom :</h3>
                    </div>
                    <input type="text" name="nom" id="nom" title="3 caractères minimum, lettres uniquements"
                        pattern="[A-Za-z-']{3,}" required />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire,Majuscules obligatoires, 3 caractères minimum, lettres uniquements.</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurNom"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Prénom :</h3>
                    </div>
                    <input type="text" name="prenom" id="prenom" title="3 caractères minimum, lettres uniquements"
                        pattern="[A-Za-z-']{3,}" required />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire, 3 caractères minimum, lettres uniquements.</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurPrenom"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Date de naissance :</h3>
                    </div>
                    <input type="date" id="ddn" name="ddn" title="Champ obligatoire"
                        pattern="\d{4}$(\/)(((0)[0-9])|((1)[0-2]))(\/)([0-2][0-9]|(3)[0-1])" required />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire.</div>
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
                    <input type="text" title="5 chiffres attendus" name="codePostal" pattern="[0-9]{5}" id="postal" required />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">5 chiffres attendus.</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurCP"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Adresse mail :</h3>
                    </div>
                    <input type="text" name="mail" title="Adresse mail attendue" id="email"
                        pattern="([a-z0-9]+)@([\da-z]+)\.([a-z\.]{2,4})$" required />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire, adresse mail correcte attendue</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurMail"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Mot de passe :</h3>
                    </div>
                    <input type="password" name="mdp" title="8 caractères, 1 majuscule, 1 miniscule, 1 caractère spécial"
                        id="password"
                        pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[!@#\$%\^&\*+])[a-zA-Z\d!@#\$%\^&\*+]{8,}"
                        required />

                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire,8 caractères minimum dont 1 majuscule, 1 minuscule, 1
                            caractère spécial</div>
                    </div>
                    <div class="petiteTaille">
                        <img src="oeil.png" id="oeil">
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurPw"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Vérification du mot de passe :</h3>
                    </div>
                    <input type="password" name="verif" title="8 caractères, 1 majuscule, 1 miniscule, 1 caractère spécial"
                        id="verifPassword"
                        pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])(?=.*[!@#\$%\^&\*+])[a-zA-Z\d!@#\$%\^&\*+]{8,}"
                        required />

                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Champ obligatoire,il doit correspondre au mot de passe du dessus</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurVerif"></div>
                </div>

                <div class="marge">
                    <div>
                        <h3>Numéro de téléphone :</h3>
                    </div>
                    <input type="text" name="tel" title="Numéro de téléphone attendu" id="phone"
                        pattern="(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}" />
                    <div class="question">
                        <img class="infoBulle" src="question.png">
                        <div class="cache">Numéro de téléphone valide attendu</div>
                    </div>
                    <div class="taille">
                        <img src="" class="correct">
                    </div>
                    <div class="pasCentrer" id="erreurPhone"></div>
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