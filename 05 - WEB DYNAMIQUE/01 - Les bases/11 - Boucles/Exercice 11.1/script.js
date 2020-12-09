var cpt=0;
do {
    var prenom=prompt("Saisissez le prénom N°"+(cpt+1)+"\nou Clic sur Annuler pour arrêter la saisie.");
    console.log(prenom);
    cpt++;
} while (prenom!="");
cpt=cpt-1;
console.log(cpt);