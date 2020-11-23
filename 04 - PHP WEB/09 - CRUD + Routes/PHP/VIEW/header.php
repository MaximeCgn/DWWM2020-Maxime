<header>
        <div class="logo">
             <?php
if (file_exists("./IMG/crud.png")) {
    echo '<a href="index.php">';
} else {
    echo '<a href="../../index.php">';
}
if (file_exists("./IMG/crud.png")) {
    echo '<img src="./IMG/crud.png" alt="crud">';
} else {
    echo '<img src="../../IMG/crud.png" alt="crud">';
}
?>
        </a>
        </div>
        <div class="titre"><h1>Gestion des produits</h1></div>
        <div class="espace"></div>
</header>