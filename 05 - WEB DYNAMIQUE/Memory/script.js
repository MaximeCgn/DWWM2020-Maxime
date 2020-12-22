var plages = document.getElementsByClassName("recto");
var img = document.getElementsByClassName("verso");
var nbrcp = document.getElementById("nbrcp");
var chrono = document.getElementById("timer");
var recom=document.getElementById("restart");

var drapo = true;
var cpt = 0;
var tab = [];
var versoTemp = [];
var rectoTemp = [];
var min = 0;
var sec = 0;
var secTemp = 0;
/***************************Fonctions********************************/
/***Retourner les cartes***/
function retourne(bool, verso, e) {
    if (bool == true) {
        e.target.style.display = "none";
        verso.style.display = "flex";
        tab.push(verso.getAttribute("src"))
    }
    else {
        rectoTemp[0].style.display = "flex";
        rectoTemp[1].style.display = "flex";
        versoTemp[0].style.display = "none";
        versoTemp[1].style.display = "none";

        tab = [];
        rectoTemp = [];
        versoTemp = [];
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
            secTemp = 0
        }
    }
    if (min < 10) {
        time = "0" + min;
    }
    else {
        time = min;
    }
    if (sec < 10) {
        time += ":0" + sec
    }
    else {
        time += ":" + sec
    }
    chrono.innerHTML = time;
    horloge = setTimeout("timer()", 1000);
}


/***********************Evenements*********************/

recom.addEventListener("click",function(){
    document.location.reload();
})

for (let i in plages) {
    plages[i].addEventListener("click", (e) => {
        if (drapo == true) {
            drapo = false;
            timer();
        }
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
            } else {
                time = setTimeout(retourne, 1000, false, verso, e)
            }
        }
    });
}

