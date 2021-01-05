/****Variables ****/
var nomP = document.getElementById("nom");
var codePostal = document.getElementById("postal");
var dateN = document.getElementById("ddn");
var mail = document.getElementById("email");


var erreurCode = document.getElementById("erreurCP");
var erreurN = document.getElementById("erreurNom");
var erreurM=document.getElementById("erreurMail");

var sub = document.getElementById("submit");

var checking = document.getElementsByClassName("correct");

var questions = document.getElementsByClassName("infoBulle");


/***Fonctions ***/

// function check() {
//     if (flag1 == true && flag2 == true && flag3 == true && flag4 == true) {
//         sub.removeAttribute("disabled");
//     }
// }
/*****************************CHECKVALIDITY A FAIRE, OEIL, MESSAGE MDP COMPO**************************************/
function validateName() {

    if (/[A-Za-z-\'\- ]{3,}$/.test(nomP.value)) {
        erreurN.textContent = "";
        checking[0].setAttribute("src", "check.png");
        return true;
    }
    checking[0].setAttribute("src", "cross.png");
    erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
    return false;
}

function validateCP() {
    if (/\d{5}$/.test(codePostal.value)) {
        erreurCP.textContent = "";
        checking[2].setAttribute("src", "check.png");
        return true;
    }
    erreurCode.textContent = "Le code postal doit comporter 5 caractères numériques."
    checking[2].setAttribute("src", "cross.png");
    return false;
}

function validateDate() {
    if (/\d{4}(\/)(((0)[0-9])|((1)[0-2]))(\/)([0-2][0-9]|(3)[0-1])$/.test(dateN.value)) {
        checking[1].setAttribute("src", "check.png");
        return true;
    }
    checking[1].setAttribute("src", "cross.png");
    return false;
}

function validateMail() {
    if (/[\w-.]+@[\w]+\.[\w]{2,4}$/.test(mail.value)) {
        erreurM.textContent = "";
        checking[3].setAttribute("src", "check.png");
        return true;
    }
    erreurM.textContent = "L'adresse mail doit suivre cet exemple : 'exemple@test.com'."
    checking[3].setAttribute("src", "cross.png");
    return false;
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

nomP.addEventListener("change", validateName);
codePostal.addEventListener("change", validateCP);
dateN.addEventListener("change", validateDate);
mail.addEventListener("change", validateMail);