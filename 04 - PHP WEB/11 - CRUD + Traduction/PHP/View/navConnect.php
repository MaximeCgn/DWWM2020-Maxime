<nav>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeAnimateurs"><?php echo texte("animateurs");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeConventions"><?php echo texte("conventions");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeEmplacements"><?php echo texte("emplacements");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeSalles"><?php echo texte("salles");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeVisite"><?php echo texte("visite");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=listeVisiteurs"><?php echo texte("visiteurs");?></a></div>
        </div>
        <div>
            <div class="libelle"><a class="centre" href="index.php?page=traitementDeconnexion"><?php echo texte("deconnexion");?></a></div>
            <?php
                if (isset($_SESSION['utilisateur']) && $_SESSION['utilisateur']->getRoleUtilisateur()=="administrateur")
                {
                    echo '
                <div class="libelle"><a class="centre" href="index.php?page=pageAdmin">Admin</a></div>';
                }
            ?>
            
        </div>
    </nav>