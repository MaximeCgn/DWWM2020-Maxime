

function checkSociete(societe) {
    if (societe.length < 1) {
        return false;
    }
}

function checkContact(contact) {
    if (contact.length < 1) {
        return false;
    }
}

function checkCodePostal(codePostal) {
    if (Number.isInteger(codePostal) == true || codePostal.length!=5) {
        return false;
    }
}

function checkVille(ville) {
    if (ville.length < 1) {
        return false;
    }
}

function checkeMail(email) {
    if (email.includes('@') == false) {
        return false;
    }
}

function checkGen(societe, contact, codePostal, ville, email) {
    var societe = document.getElementById("societe").value;
    var contact = document.getElementById("contact").value;
    var codePostal = document.getElementById("codePostal").value;
    var ville = document.getElementById("ville").value;
    var email = document.getElementById("email").value;
    if (checkSociete(societe) == false) {
        alert("La société doit comporter au moins 1 caractère");
    }
    if (checkContact(contact) == false) {
        alert("La personne à contacter doit compoter au moins 1 caractère");
    }
    if (checkCodePostal(codePostal) == false) {
        alert("Le code postal doit comporter 5 caractères numériques");
    }
    if (checkVille(ville) == false) {
        alert("La ville doit comporter au moins 1 caractère");
    }
    if (checkeMail(email) == false) {
        alert("L'adresse mail doit comporter au moins le caractère '@'");
    }
    ValidateEmail(email);
}

function selectAffichage()
{
    var select=document.getElementById("envTechSel").value;
    if (select=="autres")
    {
        document.getElementById("envTech").value="";
    }
    else{
        document.getElementById("envTech").value=select;
    }
}

function ValidateEmail(email) 
{
 if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(document.getElementById("email").value))
  {
    return (true)
  }
    alert("Vous avez entré une mauvaise adresse mail")
    return (false)
}