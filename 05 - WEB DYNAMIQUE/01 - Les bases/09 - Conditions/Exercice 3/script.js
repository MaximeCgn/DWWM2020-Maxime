var nbr1 = parseInt(prompt("Entrez le premier nombre"));
var nbr2 = parseInt(prompt("Entrez le second nombre"));
var ope = prompt("Entrez un opérateur");

switch (ope)
{
    case "+":
        alert(nbr1 + nbr2);
        break;
    case "-":
        alert(nbr1 - nbr2);
        break;
    case "*":
        alert (nbr1*nbr2);
        break;
    case "/":
        if (nbr1!=0 && nbr2!=0)
        {
            alert(nbr1/nbr2);
            break;
        }
        else {
            alert("Division par 0 impossible");
            break;
        }
    default:
        alert("Merci d'entrer un opérateur valide");
        window.location.reload();
}
