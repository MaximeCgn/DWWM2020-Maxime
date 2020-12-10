var tab=[];
var somme=0;
do{
    var val=parseInt(prompt("Entrez une valeur"));
    tab.push(val);
}while (val!=0);

for (let i=0;i<tab.length;i++)
{
    somme+=tab[i];
}

var moy=somme/(tab.length-1);

document.write("Il y a "+(tab.length-1)+" valeurs dans votre tableau.\n La somme des valeurs est de "+somme+"\nLa moyenne des valeurs est de "+moy);
