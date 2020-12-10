var x = parseInt(prompt("Entrez un nombre"));
var y = parseInt(prompt("Entrez un autre nombre"));


function produit(x,y)
{
    document.write(x*y);
}

function afficheIMG(img)
{
   var image= document.createElement("img");
   image.src= img;
   var div=document.getElementById("test");
   div.appendChild(image);
}


produit(x,y);
afficheIMG("Pikachu.png");

//MARCHE PAS