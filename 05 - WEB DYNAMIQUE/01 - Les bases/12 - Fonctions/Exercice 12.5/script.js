function strtok(str1,str2,n)
{
    var tokens=str1.split(str2).slice(n-1,n);
    var resultat = tokens.join(str2);
    console.log(resultat);
    return resultat;
}

var echo=strtok("a;b;c;d;e;f",";",3);
document.write(echo);