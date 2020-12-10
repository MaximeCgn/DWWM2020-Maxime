do {
  var magic = parseInt(Math.random() * 100);
  do {
    var reponse = parseInt(prompt("Trouvez le nombre magique, entrez un nombre :"));
    switch (reponse == magic) {
      case true :
          alert("Vous avez gagné ! Le nombre magique était "+magic);
          break;
      case false :
          if (reponse > magic)
              alert("Trop grand !");
          else
              alert("Trop petit !");
          break;
    }
  } while (reponse != magic);

  var rejouer = confirm("Prêt à rejouer ?");
} while (rejouer == true);
