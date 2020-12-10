var cpt=0;
var chaine=prompt("Entrez un mot")

for (i=0;i<=chaine.length-1;i++)
{
    if (chaine.charAt(i)=="a" || chaine.charAt(i)=="e" || chaine.charAt(i)=="i" || chaine.charAt(i)=="o" || chaine.charAt(i)=="u")
        cpt++;
}

alert("Il y a "+cpt+" voyelles dans ce mot");