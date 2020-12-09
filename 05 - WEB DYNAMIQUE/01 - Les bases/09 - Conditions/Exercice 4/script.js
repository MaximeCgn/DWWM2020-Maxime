var pu=parseInt(prompt("Prix unitaire du produit"));
var qtecom=parseInt(prompt("Quantité commandée"));
var tot= pu*qtecom;
var port = 0.02;

if (tot>=100 && tot<=200)
{
    tot=tot-(tot*0.05);
}
else if(tot>200)
{
    tot=tot-(tot*0.1);
}

if (tot<500)
{
    if (tot*port>6)
    {
        var pap=tot+(tot*port);
    }
    else
    {
        var pap=tot+6;
    }
}
else{
    var pap=tot;
}

alert("Prix a payer "+pap);
