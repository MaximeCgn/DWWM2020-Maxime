<?php

$uri = $_SERVER['REQUEST_URI'];
if (substr($uri, strlen($uri)-1)== "/")
{
    $uri .= "index.php?";
}
else if (in_array("?", str_split($uri))) 
{
    $uri .= "&";
}
else
{
    $uri .= "?";
}

?>
<body class="colonne">
    <header>
        <div class="image">
            <img src="./IMG/logo.png" alt="image PGW">
        </div>
        <div class="titre"><?php echo texte("titre");?></div>
        <div class="image">
        </div>
        <div class="langue">
            <div class="flag">
                <a href="<?php echo $uri;?>lang=EN">
                    <img src="./IMG/en.png" alt="EN">
                </a>
            </div>
            <div class="flag">
                <a href="<?php echo $uri; ?>lang=FR">
                    <img src="./IMG/fr.png" alt="FR">
                </a>
            </div>
        </div>
    </header>