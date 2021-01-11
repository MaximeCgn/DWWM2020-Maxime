const requ = new XMLHttpRequest();
const requ2 = new XMLHttpRequest();

var corps = document.getElementsByTagName("tbody")[0];
var divCount = document.getElementById("total");
requ2.onreadystatechange = function (event) {
    // XMLHttpRequest.DONE === 4
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            console.log("Réponse reçue: %s", this.responseText);
            reponse = JSON.parse(this.responseText);
            for (let i = 0; i < parseInt(divCount.textContent); i++) {
                ligne = document.createElement("tr");
                ligne.setAttribute("class", "crudLigne");
                corps.appendChild(ligne);

                nom = document.createElement("td");
                prenom = document.createElement("td");
                boutons = document.createElement("td");
                afficher = document.createElement("a");
                modifier = document.createElement("a");
                supprimer = document.createElement("a");
                nom.setAttribute("class", "crudColonne");
                prenom.setAttribute("class", "crudColonne");
                boutons.setAttribute("class", "crudColonne")
                afficher.setAttribute("class", "crudBtn crudBtnEdit");
                modifier.setAttribute("class", "crudBtn crudBtnModif");
                supprimer.setAttribute("class", "crudBtn crudBtnSuppr");

                afficher.innerHTML = "Afficher";
                modifier.innerHTML = "Modifier";
                supprimer.innerHTML = "Supprimer"

                ligne.appendChild(nom);
                ligne.appendChild(prenom);
                ligne.appendChild(boutons);
                boutons.appendChild(afficher);
                boutons.appendChild(modifier);
                boutons.appendChild(supprimer);


                nom.innerHTML = reponse[i].nom;
                prenom.innerHTML = reponse[i].prenom;
            }

        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

requ.onreadystatechange = function (event) {
    // XMLHttpRequest.DONE === 4
    if (this.readyState === XMLHttpRequest.DONE) {
        if (this.status === 200) {
            console.log("Réponse reçue: %s", this.responseText);

            reponse = JSON.parse(this.responseText);
            console.log(reponse);
            divCount.innerHTML = reponse.nb;
        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

requ.open('GET', './PHP/Model/Count.php', true);
requ.send(null);

requ2.open('GET', './PHP/Model/Liste.php', true);
requ2.send(null);