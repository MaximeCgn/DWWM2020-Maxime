var taille=parseInt(prompt("Taille du tableau"));
var tab=[];
do
{
    var val=prompt("Entrez une valeur");
    tab.push(val);
    document.write(val+"\n");
} while(tab.length!=taille)
