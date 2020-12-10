var nbr=parseInt(prompt("Entrez un nombre"));
var prem=new Boolean(true);

for (i=2;i<nbr;i++)
{
    if (nbr%i==0)
        prem=false;
    
}

if (prem)
    alert("Ce nombre est premier");

else
    alert("Ce nombre n'est pas premier");
