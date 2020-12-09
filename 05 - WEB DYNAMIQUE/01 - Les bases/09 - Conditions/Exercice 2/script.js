var annee=parseInt(prompt("Entrez votre année de naissance"));
var age=new Date().getFullYear()-annee;
if (age>=18)
{
    alert("Vous avez "+age+" ans\nVous êtes majeur")
}
else{
    alert("Vous avez "+age+" ans\nVous êtes mineur")
}