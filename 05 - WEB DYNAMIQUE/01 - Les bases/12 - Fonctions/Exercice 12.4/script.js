var rep = parseInt(prompt("1- Multiples\n2- Somme et moyenne\n3- Recherche du nombre de voyelles\n4- Recherche du nombre des caracteres suviants\nEntrez votre option :"));

switch (rep) {
    case 1:
        var nbr = parseInt(prompt("Entrez un nombre à multiplier"))
        function TableMultiplication(nbr) {
            for (let i = 0; i <= 10; i++) {
                let ligne = i + " x " + nbr + " = " + (i * nbr) + "\n";
                document.write(ligne);
            }
        }
        TableMultiplication(nbr);
        break;
    case 2:
        function moyenne() {
            let somme = 0;
            let cpt = 0;
            do {
                var nbr = parseInt(prompt("Entrez un nombre(zéro pour arrêter le programme)"));
                if (nbr != 0) {
                    somme = somme + nbr;
                    cpt++;
                }
            } while (nbr != 0)
            document.write("La somme des nombres est de " + somme + "\nLa moyenne est de " + (somme / cpt))
        }
        moyenne();
        break;
    case 3:
        function voyelle() {
            var cpt = 0;
            var chaine = prompt("Entrez un mot");
            for (let i = 0; i <= chaine.length - 1; i++) {
                if (chaine.charAt(i) == "a" || chaine.charAt(i) == "e" || chaine.charAt(i) == "i" || chaine.charAt(i) == "o" || chaine.charAt(i) == "u")
                    cpt++;
            }
            document.write("Il y a " + cpt + " voyelles dans ce mot");
        }
        voyelle();
        break;
    case 4:
        var phrase = prompt("Entrez une phrase");
        var lettre = prompt("Entrez une lettre");
        function cpt(phrase, lettre) {
            var cpt = 0;
            for (let i = 0; i < phrase.length; i++) {
                if (phrase.charAt(i) == lettre)
                    cpt++;
            }
            return cpt;
        }
        document.write(cpt(phrase,lettre));
        break;
}