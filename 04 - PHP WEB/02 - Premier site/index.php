<?php

    if (file_exists("head.php")) {
        include("head.php");
    } else {
        echo "erreur";
    }
    
    if (file_exists("header.php")) {
        include("header.php");
    } else {
        echo "erreur";
    }if (file_exists("nav.php")) {
        include("nav.php");
    } else {
        echo "erreur";
    }

    echo '

<div class="introduction">
    <h2><b><u>Biographie du réalisateur</u></b></h2>
</div>
<div class="contenu">
    <div class="texte ">
        <p>Quentin Jerome Tarantino , né le 27 mars 1963 à Knoxville dans le Tennessee, est un
            réalisateur, scénariste, producteur et acteur américain.<br>

            Il acquiert une célébrité internationale dans les années 1990, en tant que réalisateur de films
            indépendants
            avec ses deux premiers longs métrages, Reservoir Dogs (1992) et Pulp Fiction (1994), et remporte pour ce
            dernier la Palme d\'or à Cannes. Après un troisième film en 1997 (Jackie Brown), il effectue son retour
            avec
            les deux volets Kill Bill : Vol. 1 / Vol.2 (2003 et 2004). Ses plus importantes réussites commerciales
            internationales sont Django Unchained (2012) et Once Upon a Time… in Hollywood (2019), des films où il
            manie
            l\'uchronie, comme pour un autre de ses grands succès, Inglorious Basterds (2009).</p><br>

    </div>
    <div class="encadre colonne">
        <div class="image">
            <img src="IMG/tarantino.jpeg" alt="tarantino">
        </div>
        <div class="texteEncadre"><b>Quentin Tarantino pour le magazine CARLTON</b></div>
    </div>
</div>
<div class="contenu">
    <div class="encadre colonne">
        <div class="image">
            <img src="IMG/tarantino3.jpg" alt="tarantino">
        </div>
        <div class="texteEncadre"><b>Quentin Tarantino pour le magazine CARLTON</b></div>
    </div>
    <div class="texte">

        <p>Le style très cinéphile de Quentin Tarantino se reconnaît entre autres par sa narration postmoderne et
            non
            linéaire, ses dialogues travaillés souvent émaillés de références à la culture populaire, et ses scènes
            hautement esthétiques mais d\'une violence extrême, inspirées de films d\'exploitation, d\'arts martiaux ou
            de
            western spaghetti. Ayant reçu une formation d\'acteur, il interprète fréquemment de petits rôles dans ses
            propres films, comme ceux de M. Brown dans Reservoir Dogs, Jimmie dans Pulp Fiction, Warren dans
            Boulevard
            de la mort ou encore un employé de compagnie minière dans Django Unchained.<br>

            Quentin Tarantino a créé pour Pulp Fiction la société de production A Band Apart, dont le nom est un
            hommage
            au film Bande à part de Jean-Luc Godard alors que son logo reprend quant à lui les personnages en
            costumes
            noirs de Reservoir Dogs. Il collabore régulièrement avec son ami réalisateur Robert Rodriguez.</p>
    </div>

</div>


<div class="introduction">
    <h2><b><u>Le style Tarantino</u></b></h2>
</div>
<div class="contenu">
    <div class="encadre colonne">
        <div class="image">
            <img src="IMG/tarantino2.jpg" alt="tarantino">
        </div>
        <div class="texteEncadre"><b>Quentin Tarantino pour le magazine CARLTON</b></div>
    </div>
    <div class="texte ">
        <p>Tarantino signe le scénario de tous ses longs métrages et porte une attention particulière aux
            dialogues.<br>

            Ceux-ci sont abondants et ses personnages délivrent souvent de longs monologues qui forment les moments
            les
            plus marquants de ses films, « le morceau de bravoure verbal [supplantant] la scène d\'action ». <br>Le
            cinéaste utilise régulièrement une structure narrative non linéaire. Il malmène en effet la chronologie
            dans
            ses scripts, construits plus à la façon d\'un romancier que d\'un scénariste. Il préfère d\'ailleurs le
            terme
            de « chapitre » à celui de « flashback » pour nommer les nombreux allers-retours dans le temps. Le
            mélange
            des temporalités lui permet de donner des informations clés aux spectateurs au moment où il le souhaite,
            sans avoir recours à une progression dramatique verticale. Néanmoins, il ménage toujours un certain
            suspense. <br>Tarantino s\'amuse à mettre sur le même plan des actions spectaculaires, particulièrement
            sanguinolentes, et des discussions soignées, longues, banales et crues, marquées par l\'utilisation de
            l\'argot. Les conversations familières se caractérisent par l\'apparition progressive d\'une menace que
            conclut
            une effusion de violence. </p>
    </div>

</div>';


    if (file_exists("footer.php")) {
        include("footer.php");
    } else {
        echo "erreur";
    }