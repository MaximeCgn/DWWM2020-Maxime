var plages = document.getElementsByClassName("recto");
var img = document.getElementsByClassName("verso");
var nbrcp = document.getElementById("nbrcp");
var chrono = document.getElementById("timer");
var recom = document.getElementById("restart");
var solution = document.getElementById("soluce");
var cptPair = document.getElementById("paire");
var tour = document.getElementById("joueur");
var pl1 = document.getElementById("joueur1");
var pl2 = document.getElementById("joueur2");
var j1 = prompt("Nom du joueur 1:");
var j2 = prompt("Nom du joueur 2:");
var result = document.getElementById("resultat");

var debug = true;
var win = false;
var pt1 = 0;
var pt2 = 0;
var jeu = 1;
var drapo = true;
var cpt = 0;
var tab = [];
var versoTemp = [];
var rectoTemp = [];
var min = 0;
var sec = 0;
var secTemp = 0;
var compteCarte = 0;
/***************************Fonctions********************************/
/***Retourner les cartes***/
function retourne(bool, verso, e) {
  if (bool == true) {
    e.target.style.display = "none";
    verso.style.display = "flex";
    tab.push(verso.getAttribute("src"));
  } else {
    rectoTemp[0].style.display = "flex";
    rectoTemp[1].style.display = "flex";
    versoTemp[0].style.display = "none";
    versoTemp[1].style.display = "none";
    tab = [];
    rectoTemp = [];
    versoTemp = [];
    debug = true;
  }
}
/***Timer***/
function timer() {
  sec++;
  if (sec >= 60) {
    if (secTemp != 0 && sec > 55) {
      secTemp = sec - secTemp;
      sec = secTemp;
      min++;
      secTemp = 0;
    } else {
      sec = 0;
      min++;
      secTemp = 0;
    }
  }
  if (min < 10) {
    time = "0" + min;
  } else {
    time = min;
  }
  if (sec < 10) {
    time += ":0" + sec;
  } else {
    time += ":" + sec;
  }
  chrono.innerHTML = time;
  horloge = setTimeout("timer()", 1000);
}

/***********************Evenements*********************/

/**Premier joueur aléatoire**/
var rand = Math.floor(Math.random() * 100);
if (rand % 2 != 0) {
  tour.innerHTML = "<h2>A " + j1 + " de jouer.</h2>";
} else {
  tour.innerHTML = "<h2>A " + j2 + " de jouer.</h2>";
  jeu++;
}

/**Affichage des points**/
pl1.innerHTML = j1 + " a " + pt1 + " points.";
pl2.innerHTML = j2 + " a " + pt2 + " points.";

/***Restart***/
recom.addEventListener("click", function () {
  document.location.reload();
});

/***Solution***/
solution.addEventListener("click", function () {
  for (let i = 0; i < plages.length; i++) {
    plages[i].style.display = "none";
    img[i].style.display = "flex";
  }
  clearTimeout(horloge);
});

/***Jeu***/
for (let i in plages) {
  plages[i].addEventListener("click", (e) => {
    if (drapo == true) {
      drapo = false;
      timer();
    }
    if (debug == true) {
      cpt++;
      nbrcp.innerHTML = "Nombre de coups :" + cpt;
      verso = e.target.parentNode.getElementsByClassName("verso")[0];
      versoTemp.push(verso);
      rectoTemp.push(e.target);
      if (tab.length < 2) {
        retourne(true, verso, e);
      }
      if (tab.length == 2) {
        if (tab[0] == tab[1]) {
          console.log("oui");
          tab = [];
          versoTemp = [];
          rectoTemp = [];
          compteCarte++;
          if (jeu % 2 != 0) {
            pt1++;
            pl1.innerHTML = j1 + " a " + pt1 + " points.";
            if (pt1 > 4) {
              result.innerHTML = "<h1>" + j1 + " a gagné !</h1>";
              win = true;
              clearTimeout(horloge);
            }
          } else {
            pt2++;
            pl2.innerHTML = j2 + " a " + pt2 + " points.";
            if (pt1 > 4) {
              result.innerHTML = "<h1>" + j2 + " a gagné !</h1>";
              win = true;
              clearTimeout(horloge);
            }
          }
          if (compteCarte == 1) {
            cptPair.innerHTML = compteCarte + " paires trouvée";
          } else {
            cptPair.innerHTML = compteCarte + " paires trouvées";
          }
          if (compteCarte == 8 && win == false) {
            result.innerHTML = "<h1>Egalité !</h1>";
            clearTimeout(horloge);
          }
        } else {
          debug = false;
          time = setTimeout(retourne, 1000, false, verso, e);
          jeu++;
          if (jeu % 2 != 0) {
            tour.innerHTML = "<h2>A " + j1 + " de jouer.</h2>";
          } else {
            tour.innerHTML = "<h2>A " + j2 + " de jouer.</h2>";
          }
        }
      }
    }
  });
}
