<?php
$titre = "Jeu du Memory";
$titrePage = "Jeu de mémoire";
include './head.php';
include './header.php';

for ($i = 1; $i <= 8; $i++) {
    $img[] = $i;
    $img[] = $i;
}


echo '
<div id="nbrcp"></div>
<button id="restart">Recommencer</button>
<div id="timer"></div>
<div class="colonne">';
for ($i = 1; $i <= 4; $i++) {
    echo '<div class="ligne">
            <div class="espace"></div>';
    for ($j = 1; $j <= 4; $j++) {
        $key = array_rand($img);
        $nb = $img[$key];
        echo '<div class="img">
                <img class="verso"  src="./images/' . $nb . '.jpg">
                <img class ="recto"  src="./images/plage.jpg">
              </div>';
        // unset($img[$key]);
        // sort($img);
        array_splice($img,$key,1);
    }
    echo '<div class="espace"></div>
    </div>';
}
echo '<div></div>
    <div></div>
    <div></div>
</div>
';
include './footer.php';
