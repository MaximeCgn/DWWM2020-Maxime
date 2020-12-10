var phrase=prompt("Entrez une phrase");
var lettre=prompt("Entrez une lettre");

function cpt(phrase,lettre)
{
    var cpt=0;
    for (let i=0; i<phrase.length;i++)
    {
        if (phrase.charAt(i)==lettre)
            cpt++;
    }
    return cpt;
}

document.write(cpt(phrase,lettre));