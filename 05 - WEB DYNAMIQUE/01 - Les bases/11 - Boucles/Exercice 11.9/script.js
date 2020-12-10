var cpt=0;
var cptm=0;
var cptv=0;
do{
    var age = parseInt(prompt("Entrez un âge"));
    if (age<20)
    {
        cpt++;
    }
    else if (age<40 && age>20)
    {
        cptm++;
    }
    else
    {
        cptv++;
    }


}while(age<100)

alert("Il y a "+cpt+" personnes de moins de 20 ans, "+cptm+" personnes entre 20 et 40 ans et "+cptv+" personnes de plus de 40 ans");