<?php

if (file_exists("./head.php")) {
    include "./head.php";
} else {
    echo "Erreur";
}

if (file_exists("header.php")) {
    include "header.php";
} else {
    echo "Erreur";
}


for($i=1;$i<=8;$i++){
    $img[]=$i;
    $img[]=$i;
}

for ($i=1;$i<=4;$i++)
{
    echo '<div></div>';
    echo'<div class="ligne">';
    for($j=1;$j<=4;$j++)
    {
        $pos=array_rand($img);
        $nb=$img[$pos];
        echo '<div class="espace"></div>
                    <div class="image">
                        <img class="imageHidden" src="'.$nb.'.jpg">
                        <img class="plage" src="plage.jpg">
                    </div>';
        unset($img[$pos]);
        sort($img);
    }
    echo '<div class="espace"></div>
    </div>';
}

if (file_exists("./footer.php")) {
    include "./footer.php";
} else {
    echo "Erreur";
}
