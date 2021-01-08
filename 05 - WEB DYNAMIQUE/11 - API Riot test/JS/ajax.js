/**************************VARIABLES*****************************/
var contenu = document.getElementById("contenu");

var sumName = document.getElementById("name");
var bouton = document.getElementById("oksub");
var envoi = document.getElementById("sum");

/**************************Fonctions****************************/

// function rechPseudo() {
//     var username = sumName.value;
//     req.open('GET', 'https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/' + username, true);
//     req.send(null);
//     sumName.innerHTML = "Summoner name :" + reponse.name;
// }

/**************************API****************************/
// on définit une requete
const req = new XMLHttpRequest();
//on vérifie les changements d'états de la requête
req.onreadystatechange = function (event) {
    if (this.readyState === XMLHttpRequest.DONE) {

        if (this.status === 200) {
            // la requete a abouti et a fournit une reponse
            //on décode la réponse, pour obtenir un objet
            reponse = JSON.parse(this.responseText);
            //on met à jour le contenu
            // envoi.addEventListener("click", rechPseudo);
        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

/**************************EVENTS****************************/

req.open('GET', 'https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/G2%20Grogu?api_key=RGAPI-7515fcd6-c12a-4f78-8241-2f85f230183c', true);
req.send(null);