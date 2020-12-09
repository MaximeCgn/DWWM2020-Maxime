var n = parseInt(prompt("Entrez le nombre dont vous voulez les multiples"));
var x = parseInt(prompt("Entrez le nombre de fois dont vous voulez la multiplication"));
var cpt=0;
for (i=0;i<=x;i++){
    var ligne=i+" x "+n+" = "+(i*n);
    console.log(ligne);
}