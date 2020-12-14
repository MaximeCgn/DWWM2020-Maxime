

function afficheHeure(){
    var date=new Date();
    var heure=date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
    document.getElementById("heure").value=heure;
}

function afficheDate()
{
    var date=new Date();
    var dateActu=date.getFullYear()+"/"+(date.getMonth()+1)+"/"+date.getDate();
    document.getElementById("date").value=dateActu;
}
