/****Variables ****/
var nomP = document.getElementById("nom");
var codePostal = document.getElementById("postal");
var dateN=document.getElementById("ddn");
var erreurCode = document.getElementById("erreurCP");
var erreurN = document.getElementById("erreurNom");
var sub = document.getElementById("submit");

var checking=document.getElementsByClassName("correct");

var questions=document.getElementsByClassName("infoBulle");

var flag1 = false;
var flag2 = false;
var flag3=false;
/***Fonctions ***/

function check() {
    if (flag1 == true && flag2 == true && flag3==true) {
        sub.removeAttribute("disabled");
    }
}

/***Event***/
/**Check nom**/
nomP.addEventListener("change", function () {
    if (nomP.value.length < 3) {
        erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
        checking[0].setAttribute("src","cross.png");
    }
    else {
        for (i = 0; i < nomP.value.length; i++) {
            if (!isNaN(nomP.value[i])) {
                erreurN.textContent = "";
                flag1 = true;
                check();
                erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
                flag1 = false;
                checking[0].setAttribute("src","cross.png");
            }
            else {
                erreurN.textContent = "";
                flag1 = true;
                check();
                checking[0].setAttribute("src","check.png");
            }
        }
    }
});

/**Check code postal**/
codePostal.addEventListener("change", function () {
    if (codePostal.value.length != 5) {
        erreurCode.textContent = "Le code postal doit comporter 5 caractères numériques.";
        flag2 = false;
        checking[2].setAttribute("src","cross.png");
    }
    else {
        erreurCode.textContent = "";
        flag2 = true;
        check();
        checking[2].setAttribute("src","check.png");
    }
});

/**Check de la date**/
dateN.addEventListener("change",function(){
    console.log("aaa");
    flag3=true;
    check();
    checking[1].setAttribute("src","check.png");
})

/**Infos question mark**/
for(i=0;i<questions.length;i++)
{
    questions[i].addEventListener("mouseover",function(e){
        
        parent=e.target.parentNode;
        montre=parent.getElementsByClassName("cache")[0];
        montre.style.display="flex";
    });

    questions[i].addEventListener("mouseout",function(e){
        parent=e.target.parentNode;
        montre=parent.getElementsByClassName("cache")[0];
        montre.style.display="none";
    })
}