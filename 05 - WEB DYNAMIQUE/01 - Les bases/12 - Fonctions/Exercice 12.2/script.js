var nbr=parseInt(prompt("Entrez un nombre"));

function TableMultiplication(nbr)
{
    for (let i=0;i<=10;i++)
    {
        let ligne=i+" x "+nbr+" = "+(i*nbr)+"\n";
        document.write(ligne);
    }
}

TableMultiplication(nbr);