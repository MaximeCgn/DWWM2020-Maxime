<?php

echo '<form method="POST" action="index.php?page=traitementUtilisateurs&typeTraitement=ajouter">
    <div class="contenu colonne">
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                Nom Utilisateur
                </div>
                <div>
                <div class="espace"></div>
                <input type="hidden" name="roleUtilisateur" value="Utilisateur"/>
                <input class="libelle " type="text" name="nomUtilisateur" placeholder="Nom Utilisateur" required/>
                <div class="espace"></div>
                </div>
        </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                Prénom Utilisateur
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="prenomUtilisateur" placeholder="Prénom Utilisateur" required/>
                <div class="espace"></div>
                </div>
            </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                Mot de passe Utilisateur
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="password" name="motDePasseUtilisateur" placeholder="Mot de passe Utilisateur" required/>
                <div class="espace"></div>
            </div>
        </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                Adresse mail Utilisateur
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="email" name="adresseMailUtilisateur" placeholder="Adresse mail Utilisateur" required/>
                <div class="espace"></div>
                </div>
            </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                Pseudo Utilisateur
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="pseudoUtilisateur" placeholder="Pseudo Utilisateur" required/>
                <div class="espace"></div>
                </div>
            </div>
            
            <div>
            <div class="espace"></div>
            <div class="return marginLight"><a class="centre" href="index.php?page=listeUtilisateurs">Retour</a></div>
            <div class="espace"></div>
        </div>
        <div>
        <div class="espace"></div>
            <input type="submit" class="ajouter marginLight centre" name="submit" value="Inscription"/>
            <div class="espace"></div>
            </div>
        </div>
</form>';
