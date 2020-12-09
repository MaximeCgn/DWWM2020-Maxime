var somme=0;
var cpt=0;
do{
    
    var n=parseInt(prompt("Entrez un nombre"));
    if (n!=0){
        somme=somme+n;
        cpt++;
    }
    
}while (n!=0);
alert("La somme des nombres est de "+somme+"\nLa moyenne est de "+(somme/cpt)+"\nLe nombre minimum est de \nLe nombre maximum est de ");

//C PO FINI