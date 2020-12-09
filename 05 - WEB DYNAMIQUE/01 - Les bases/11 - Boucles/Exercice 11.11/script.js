do {
  var magic = parseInt(Math.random() * 100);
  do {
      var reponse = parseInt(
    prompt("Trouvez le nombre magique, entrez un nombre :")
  );
    switch (reponse) {
      case reponse > magic:
        alert("Trop grand !");
        prompt("Trouvez le nombre magique, entrez un nombre :")
        break;
      case reponse < magic:
        alert("Trop petit !");
        prompt("Trouvez le nombre magique, entrez un nombre :")
        break;
      case reponse == magic:
        alert("Vous avez gagné !");
        prompt("Trouvez le nombre magique, entrez un nombre :")
        break;
    }
  } while (reponse != magic);

  var rejouer = confirm("Prêt à rejouer ?");
} while (rejouer == true);

//PAFINI