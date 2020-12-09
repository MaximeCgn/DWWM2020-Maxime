var sit=confirm("Êtes vous mariés ?(Ok=Oui | Annuler=Non)");
var enf=parseInt(prompt("Combien d'enfants avez-vous ?"));
var sal=parseInt(prompt("Quel est votre salaire mensuel ?"));

if (sal<1200)
{
    alert("La participate à laquelle vous avez le droit est de 10%");
}
else if(sal>=1200)
{
    if (sit==true)
    {
        var part=25;
    } else
    {
        var part=20;
    }

    var tot=part+(enf*10);
    if (tot<=50)
    {
        alert("La participation à laquelle vous avez le droit est de "+tot+"%");
    } else
    {
        alert("La participate à laquelle vous avez le droit est de 50%");
    }
}