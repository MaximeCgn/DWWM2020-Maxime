/**********************VARIABLE***********************/
const requ = new XMLHttpRequest();
const requ2 = new XMLHttpRequest();

var selects = document.getElementsByTagName("select");

/**********************FONCTIONS***********************/

requ.onreadystatechange = function (event) {
    // XMLHttpRequest.DONE === 4
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            reponse = JSON.parse(this.responseText);
            defaut = document.createElement("option");
            defaut.setAttribute("value", 9999);
            defaut.innerHTML = "Choisissez une région";
            selects[0].appendChild(defaut);
            for (let i = 0; i < reponse.length; i++) {
                ligne = document.createElement("option");
                ligne.setAttribute("value", reponse[i].idRegion);
                ligne.innerHTML = reponse[i].LibelleRegion;
                selects[0].appendChild(ligne);
            }
        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

function recupRegion(e) {
    idRegion = selects[0].value;
    if (idRegion == 9999) {
        selects[1].innerHTML="";
    } else {
        requ2.open('POST', './index.php?page=listeD', true);
        requ2.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        requ2.send("idRegion=" + idRegion);
    }

}

requ2.onreadystatechange = function (event) {
    // XMLHttpRequest.DONE === 4
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            selects[1].innerHTML = "";
            for (let i = 0; i < reponse.length; i++) {
                console.log("Réponse reçue: %s", this.responseText);
                reponse = JSON.parse(this.responseText);
                console.log(reponse);
                ligneDpt = document.createElement("option");
                ligneDpt.setAttribute("value", reponse[i].idDepartement);
                ligneDpt.innerHTML = reponse[i].LibelleDepartement;
                selects[1].appendChild(ligneDpt)
            }
        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

/**********************EVENTS***********************/

selects[0].addEventListener("input", recupRegion);

/**********************API***********************/

requ.open('GET', './index.php?page=listeR', true);
requ.send(null);


