var somme=0;
var cpt=0;
var min=parseInt(prompt("Entrez un nombre"));
var max=min;
do{
    
    var n=parseInt(prompt("Entrez un nombre"));
    if (n!=0){
        somme=somme+n;
        cpt++;

      if (n>max)
    {
        max=n;
    }
    if (n<min)
    {
        min=n
    }  
    }
    
}while (n!=0);
alert("La somme des nombres est de "+somme+"\nLa moyenne est de "+(somme/cpt)+"\nLe nombre minimum est de "+min+" \nLe nombre maximum est de "+max);
