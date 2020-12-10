var prenom=["a","b","c","d","e","c","f","g","h","i","j","k","l","m","n","o","p","q","r","s"];

var rech=prompt("Quel prénom voulez vous retrouver ?");
var trouver=prenom.indexOf(rech);
prenom.splice(trouver,1);
prenom.push("");
console.log(prenom);
