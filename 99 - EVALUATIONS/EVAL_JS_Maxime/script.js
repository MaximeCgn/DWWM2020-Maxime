/*************VARIABLES**************/

/**Formulaire**/
var capital = document.getElementById("capital");
var taux = document.getElementById("tauxNominal");
var duree = document.getElementById("dureeEmprunt");

/**Resultats**/
var mensualite = document.getElementById("mensualite");
var coutTotal = document.getElementById("coutTotal");

/**Erreurs**/
var erreurCap = document.getElementById("erreurCap");
var erreurTN = document.getElementById("erreurTN");
var erreurD = document.getElementById("erreurD");

/**Boutons**/
var calcul = document.getElementById("calcul");
var newCalcul = document.getElementById("new");

/**Tableau de vérification des regExp**/
var tabVerif = { //Si value = 1 alors le regexp n'set pas bon
    "capital": 1,
    "taux": 1,
    "duree": 1
}

/*************FONCTIONS**************/
function checkValidCapital() { //Fonction qui check la validité du Capital grace au pattern
    if (capital.checkValidity() && capital.value != "") {
        erreurCap.innerHTML = "";
        tabVerif["capital"] = 0; //Change la valeur du tableau en 0 si c'est correct
    } else {
        if (capital.value == "") {//N'affiche pas l'erreur si l'input est vide
            tabVerif["capital"] = 1; //Change la valeur du tableau en 1 si c'est faux
        } else {
            erreurCap.innerHTML = "Format Incorrect";//Affiche l'erreur
            tabVerif["capital"] = 1;//Change la valeur du tableau en 1 si c'est faux
        }
    }
    calculMensualite();
}

function checkValidTaux() { //Fonction qui check la validité du Taux grace au pattern
    if (taux.checkValidity() && taux.value != "") {
        erreurTN.innerHTML = "";
        tabVerif["taux"] = 0;//Change la valeur du tableau en 0 si c'est correct
    } else {
        if (taux.value == "") {//N'affiche pas l'erreur si l'input est vide
            tabVerif["taux"] = 1; //Change la valeur du tableau en 1 si c'est faux
        } else {
            erreurTN.innerHTML = "Format Incorrect";//Affiche l'erreur
            tabVerif["taux"] = 1;//Change la valeur du tableau en 1 si c'est faux
        }
    }
    calculMensualite();
}

function checkValidDuree() { //Fonction qui check la validité de la durée grace au pattern
    if (duree.checkValidity() && duree.value != "") {
        erreurD.innerHTML = "";
        tabVerif["duree"] = 0;//Change la valeur du tableau en 0 si c'est correct
    } else {
        if (duree.value == "") {//N'affiche pas l'erreur si l'input est vide
            tabVerif["duree"] = 1; //Change la valeur du tableau en 1 si c'est faux
        } else {
            erreurD.innerHTML = "Format Incorrect";//Affiche l'erreur
            tabVerif["duree"] = 1;//Change la valeur du tableau en 1 si c'est faux
        }
    }
    calculMensualite();
}

function calculMensualite() { //Fonction qui calcul la mensualite
    console.log(tabVerif);
    var taille = 0;
    var cpt = 0;
    for (var elt in tabVerif) { //Fais une vérification du tableau
        taille++;
        if (tabVerif[elt] == 0) {
            cpt++;
        }
    }

    if (cpt == taille) { //Si toutes les valeurs du tableau sont à 0, effectue le calcul
        var intCap = parseInt(capital.value);
        var intTaux = parseInt(taux.value);
        var nbMois = parseInt(duree.value) * 12;
        var valueMensu = (intCap * intTaux / 12) / (1 - Math.pow(1 + intTaux / 12, - nbMois));
        if (!isNaN(valueMensu)) {
            mensualite.value = valueMensu.toFixed(2);//Permet d'arrondir a deux chiffres après la virugle
            calculCoutTotal(); //Appel la fonction du quand le calcul de la mensualite est terminé
        }
    } else {
        mensualite.value = "";
        coutTotal.value = "";
    }
}

function calculCoutTotal() { //Fonction qui calcul le coût total
    var intCap = parseInt(capital.value);
    var intDuree = parseInt(duree.value);
    var valueCT = 12 * intDuree * mensualite.value - intCap; //j'ai trouvé sur Internet une formule pour calculer le cout Total : https://www.pretto.fr/taux-immobilier/cout-credit-immobilier/calcul-interet/
    if (!isNaN(valueCT)) {
        coutTotal.value = valueCT.toFixed(2); //Permet d'arrondir a deux chiffres après la virugle
    }
}

function nouveauCalcul() { //Fonction qui permet un nouveau calcul (clear input et message d'erreur)
    //J'ai évité de faire un refresh de la page pour éviter les chargements
    capital.value = "";
    taux.value = "";
    duree.value = "";

    erreurCap.innerHTML = "";
    erreurTN.innerHTML = "";
    erreurD.innerHTML = "";

    mensualite.value = "";
    coutTotal.value = "";
}

/*************EVENTS**************/

capital.addEventListener("input", checkValidCapital) //Event pour check si la value de capital suit bien le pattern

taux.addEventListener("input", checkValidTaux)//Event pour check si la value du taux suit bien le pattern

duree.addEventListener("input", checkValidDuree)//Event pour check si la value de la durée suit bien le pattern

calcul.addEventListener("click", calculMensualite)//Event pour lancer le calcul sur le bouton "Calculer". (Bouton inutile vu que les events de check se lance en "input" et leur fonctions appellent calculMensualite)

newCalcul.addEventListener("click", nouveauCalcul)//Event pour lancer le clear des inputs et des messages d'erreurs
