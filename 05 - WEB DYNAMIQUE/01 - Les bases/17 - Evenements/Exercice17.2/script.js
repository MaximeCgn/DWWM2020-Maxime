var magic = parseInt(Math.random() * 100);
console.log(magic);

function testValeur(magic)
{
    
    var reponse=document.getElementById("valeur").value;
    switch (reponse == magic) {
        case true :
            document.getElementById("label1").innerHTML ="Vous avez gagné ! Le nombre magique était "+magic;
            break;
        case false :
            if (reponse > magic)
            document.getElementById("label1").innerHTML ="Trop grand !";
            else
            document.getElementById("label1").innerHTML ="Trop petit !";
            break;
      }

}