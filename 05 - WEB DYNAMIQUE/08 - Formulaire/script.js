/**A faire**/
/*Infos état mdp*/

/*****************************VARIABLES*****************************/
/**Get input**/
var nomP = document.getElementById("nom");
var codePostal = document.getElementById("postal");
var dateN = document.getElementById("ddn");
var mail = document.getElementById("email");
var mdp = document.getElementById("password");
var tel= document.getElementById("phone");
var verif=document.getElementById("verifPassword");
var prenom=document.getElementById("prenom");

/**Get erreur**/
var erreurCode = document.getElementById("erreurCP");
var erreurN = document.getElementById("erreurNom");
var erreurM=document.getElementById("erreurMail");
var erreurMdp=document.getElementById("erreurPw");
var erreurTel=document.getElementById("erreurPhone");
var erreurVer=document.getElementById("erreurVerif");
var erreurP=document.getElementById("erreurPrenom");

/**Submit**/
var sub = document.getElementById("submit");

/**Check image**/
var checking = document.getElementsByClassName("correct");

/**Infobulle**/
var questions = document.getElementsByClassName("infoBulle");

/**Oeil pour mdp**/
var see=document.getElementById("oeil");

/**Tableau de vérification**/
var tabVerif={
    "name":1,
    "ddn":1,
    "code":1,
    "mail":1,
    "mdp":1,
    "verif":1,
    "prenom":1
}

/*****************************FONCTIONS*****************************/
/**Vérification dans le tableau, si tout le tableau est à 0, c'est bon**/
function check() {
    var taille=0;
    var cpt=0;
    for (var elt in tabVerif)
    {
        taille++;
        if (tabVerif[elt]==0)
        {
            cpt++;
        }
    }
    console.log(taille);
    console.log(cpt);
    if (cpt==taille)
    {
        sub.removeAttribute("disabled")
        sub.style.backgroundColor=" rgb(42, 63, 80)";
        sub.style.borderBottom="whitesmoke 3px solid";
        sub.style.color="whitesmoke";
    }
    else {
        sub.setAttribute("disabled","");
        sub.style.backgroundColor="rgb(18, 28, 36)";
        sub.style.borderBottom="rgb(148, 148, 148) 3px solid";
        sub.style.color="rgb(148, 148, 148)";
    }
}

/**Véfification du nom**/
function validateName() {

    if (nomP.checkValidity()) {
        erreurN.textContent = "";
        checking[1].setAttribute("src", "check.png");
        tabVerif["name"]=0;
    }
    else {
    checking[1].setAttribute("src", "cross.png");
    erreurN.textContent = "Le nom doit comporter au moins 3 caractères et des lettres uniquement.";
    tabVerif["name"]=1;
    }
    check();
}

/**Verification du prénom**/
function validatePrenom(){
    if(prenom.checkValidity()){
        erreurTel.textContent="";
        checking[2].setAttribute("src","check.png");
        tabVerif["prenom"]=0;
    } else{
        erreurTel.textContent="3 caractères minimum, lettres uniquements.";
        checking[2].setAttribute("src","cross.png");
        tabVerif["prenom"]=1;
    }
}

/**Véfification de la date de naissance**/
function validateDate() {
    if (dateN.checkValidity()) {
        checking[3].setAttribute("src", "check.png");
        tabVerif["ddn"]=0;
    } else {
    checking[3].setAttribute("src", "cross.png");
    tabVerif["ddn"]=1;
    }
    check();
}

/**Véfification du code postal**/
function validateCP() {
    if (codePostal.checkValidity()) {
        erreurCP.textContent = "";
        checking[4].setAttribute("src", "check.png");
        tabVerif["code"]=0;
    } else {
    erreurCode.textContent = "Le code postal doit comporter 5 caractères numériques."
    checking[4].setAttribute("src", "cross.png");
    tabVerif["code"]=1;
    }
    check();
}


/**Véfification de l'adresse mail**/
function validateMail() {
    if (mail.checkValidity()) {
        erreurM.textContent = "";
        checking[5].setAttribute("src", "check.png");
        tabVerif["mail"]=0;
    } else {
    erreurM.textContent = "L'adresse mail doit suivre cet exemple : 'exemple@test.com'."
    checking[5].setAttribute("src", "cross.png");
    tabVerif["mail"]=1;
    }
    check();
}

/**Véfification du mot de passe**/
function validateMdp(){
    if (mdp.checkValidity()) {
        erreurMdp.textContent = "";
        checking[6].setAttribute("src", "check.png");
        tabVerif["mdp"]=0;
    } else {
    erreurMdp.textContent = "8 caractères minimum dont 1 majuscule, 1 minuscule, 1 caractère spécial."
    checking[6].setAttribute("src", "cross.png");
    tabVerif["mdp"]=1;
    }
    check();
}

/**Véfification de la vérification du mot de passe**/
function validateVerif(){
    if(mdp.value==verif.value){
        erreurVer.textContent="";
        checking[7].setAttribute("src","check.png");
        tabVerif["verif"]=0;
    } else {
        erreurVer.textContent="Champ obligatoire,il doit correspondre au mot de passe du dessus.";
        checking[7].setAttribute("src","cross.png");
        tabVerif["verif"]=1;
    }
    check();
}

/**Véfification du numéro de téléphone**/
function validatePhone(){
    if(tel.value==""){
        erreurTel.textContent="Numéro de téléphone valide attendu";
        checking[8].setAttribute("src","cross.png");
    } else if(tel.checkValidity){
        erreurTel.textContent="";
        checking[8].setAttribute("src","check.png");
    } else {
        erreurTel.textContent="Numéro de téléphone valide attendu.";
        checking[8].setAttribute("src","cross.png");
    }
}

/**Affichage du mot de passe**/
function voirMdp(){
    if (mdp.getAttribute("type")=="password")
    {
        mdp.setAttribute("type","text");
    }else{
        mdp.setAttribute("type","password");
    }
}

/**Empêche le copy paste sur la vérification du mot de passe**/
function annule(event){
    event.preventDefault()
    return false;
}

/*****************************EVENEMENTS*****************************/

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
verif.addEventListener("blur",validateVerif)
verif.addEventListener("paste",annule)
tel.addEventListener("blur",validatePhone);
prenom.addEventListener("blur",validatePrenom);

/**Voir le mdp**/
see.addEventListener("click",voirMdp);