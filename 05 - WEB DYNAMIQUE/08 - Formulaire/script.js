/****Variables ****/
var nomP = document.getElementById("nom");
var codePostal = document.getElementById("postal");
var dateN = document.getElementById("ddn");
var mail = document.getElementById("email");
var mdp = document.getElementById("password");

var erreurCode = document.getElementById("erreurCP");
var erreurN = document.getElementById("erreurNom");
var erreurM=document.getElementById("erreurMail");
var erreurMdp=document.getElementById("erreurPw");

var sub = document.getElementById("submit");

var checking = document.getElementsByClassName("correct");

var questions = document.getElementsByClassName("infoBulle");
var see=document.getElementById("oeil");


/***Fonctions ***/

// function check() {
//     if (flag1 == true && flag2 == true && flag3 == true && flag4 == true) {
//         sub.removeAttribute("disabled");
//     }
// }
/*****************************CHECKVALIDITY A FAIRE, OEIL, MESSAGE MDP COMPO**************************************/
function validateName() {

    if (nomP.checkValidity()) {
        erreurN.textContent = "";
        checking[0].setAttribute("src", "check.png");
    }
    else {
    checking[0].setAttribute("src", "cross.png");
    erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
    }
}

function validateCP() {
    if (codePostal.checkValidity()) {
        console.log(codePostal.checkValidity());
        erreurCP.textContent = "";
        checking[2].setAttribute("src", "check.png");
    } else {
    console.log(codePostal.checkValidity());
    erreurCode.textContent = "Le code postal doit comporter 5 caractères numériques."
    checking[2].setAttribute("src", "cross.png");
    }
}

function validateDate() {
    if (dateN.checkValidity()) {
        checking[1].setAttribute("src", "check.png");
    } else {
    checking[1].setAttribute("src", "cross.png");
    }
}

function validateMail() {
    if (mail.checkValidity()) {
        erreurM.textContent = "";
        checking[3].setAttribute("src", "check.png");
    } else {
    erreurM.textContent = "L'adresse mail doit suivre cet exemple : 'exemple@test.com'."
    checking[3].setAttribute("src", "cross.png");
    }
}

function validateMdp(){
    if (mdp.checkValidity()) {
        erreurMdp.textContent = "";
        checking[4].setAttribute("src", "check.png");
    } else {
    erreurMdp.textContent = "8 caractères minimum dont 1 majuscule, 1 minuscule, 1 caractère spécial"
    checking[4].setAttribute("src", "cross.png");
    }
}

function voirMdp(){
    if (mdp.getAttribute("type")=="password")
    {
        mdp.setAttribute("type","text");
    }else{
        mdp.setAttribute("type","password");
    }
}

/***Event***/
/**Check nom**/
// nomP.addEventListener("change", function () {
//     if (nomP.value.length < 3) {
//         erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
//         checking[0].setAttribute("src","cross.png");
//         check();
//     }
//     else {
//         for (i = 0; i < nomP.value.length; i++) {
//             if (!isNaN(nomP.value[i])) {
//                 erreurN.textContent = "";
//                 flag1 = true;
//                 check();
//                 erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
//                 flag1 = false;
//                 checking[0].setAttribute("src","cross.png");
//             }
//             else {
//                 erreurN.textContent = "";
//                 flag1 = true;
//                 check();
//                 checking[0].setAttribute("src","check.png");
//             }
//         }
//     }
// });

// /**Check code postal**/
// codePostal.addEventListener("change", function () {
//     if (codePostal.value.length != 5) {
//         erreurCode.textContent = "Le code postal doit comporter 5 caractères numériques.";
//         flag2 = false;
//         check();
//         checking[2].setAttribute("src","cross.png");
//     }
//     else {
//         erreurCode.textContent = "";
//         flag2 = true;
//         check();
//         checking[2].setAttribute("src","check.png");
//     }
// });

// /**Check de la date**/
// dateN.addEventListener("change",function(){
//     console.log("aaa");
//     flag3=true;
//     check();
//     checking[1].setAttribute("src","check.png");
// })

/**Infos question mark**/
for (i = 0; i < questions.length; i++) {
    questions[i].addEventListener("mouseover", function (e) {

        parent = e.target.parentNode;
        montre = parent.getElementsByClassName("cache")[0];
        montre.style.display = "flex";
    });

    questions[i].addEventListener("mouseout", function (e) {
        parent = e.target.parentNode;
        montre = parent.getElementsByClassName("cache")[0];
        montre.style.display = "none";
    })
}

/**REGEX TESTS**/

nomP.addEventListener("blur", validateName);
codePostal.addEventListener("blur", validateCP);
dateN.addEventListener("blur", validateDate);
mail.addEventListener("blur", validateMail);
mdp.addEventListener("input", validateMdp);

see.addEventListener("click",voirMdp);