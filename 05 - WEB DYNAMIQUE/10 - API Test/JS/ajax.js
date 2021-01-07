/**************************VARIABLES*****************************/

var contenu = document.getElementById("contenu");

var ville = document.getElementById("ville");
var pays = document.getElementById("pays");
var temp = document.getElementById("temp");
var vent = document.getElementById("vent");
var sunrise = document.getElementById("sunrise");
var sunset = document.getElementById("sunset");
var meteo = document.getElementById("meteo");
var logo = document.getElementById("image");
var citySelect = document.getElementById("citySelect");
var choix = "";

/**************************Fonctions****************************/

function choixVille(e) {
    req.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q=' +e.target.value+ '&appid=4f00f8b80c9b221ffd12e64353e31667&units=metric&lang=fr', true);
    req.send(null);
}

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
            ville.innerHTML = "Météo à " + reponse.name;
            pays.innerHTML = "Taux d'humidité :" + reponse.main.humidity + "%";
            meteo.innerHTML = reponse.weather[0].description.charAt(0).toUpperCase() + reponse.weather[0].description.slice(1);
            temp.innerHTML = reponse.main.temp + "°C";

            /**Affichage du logo nécessaire**/
            logo.setAttribute("src", "Images/" + reponse.weather[0].icon + ".png");

            /**Conversion du temps UNIX en heure**/
            var unixSunrise = reponse.sys.sunrise;
            var unixSunset = reponse.sys.sunset;

            var dateSunrise = new Date(unixSunrise * 1000);
            var dateSunset = new Date(unixSunset * 1000);

            if (dateSunrise.getHours() < 10) {
                var hoursSunrise = "0" + dateSunrise.getHours();
            }
            else {
                var hoursSunrise = dateSunrise.getHours();
            }
            if (dateSunset.getHours() < 10) {
                var hoursSunset = "0" + dateSunset.getHours();
            } else {
                var hoursSunset = dateSunset.getHours();
            }
            if (dateSunrise.getMinutes() < 10) {
                var minutesSunrise = "0" + dateSunrise.getMinutes();
            } else {
                var minutesSunrise = dateSunrise.getMinutes();
            }

            if (dateSunset.getMinutes() < 10) {
                var minutesSunset = "0" + dateSunset.getMinutes();
            }
            else {
                var minutesSunset = dateSunset.getMinutes();
            }

            var tsunrise = hoursSunrise + "H" + minutesSunrise;
            var tsunset = hoursSunset + "H" + minutesSunset;

            vent.innerHTML = "Vitesse du vent :" + Math.floor((reponse.wind.speed) * 3.6) + "km/h";
            sunrise.innerHTML = "Levé du soleil :" + tsunrise +" UTC+1";
            sunset.innerHTML = "Couché du soleil :" + tsunset+" UTC+1";

        } else {
            console.log("Status de la réponse: %d (%s)", this.status, this.statusText);
        }
    }
};

//on envoi la requête
req.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q=calais,fr&appid=4f00f8b80c9b221ffd12e64353e31667&units=metric&lang=fr', true);
req.send(null);

/**************************EVENTS****************************/
citySelect.addEventListener("input", choixVille);

