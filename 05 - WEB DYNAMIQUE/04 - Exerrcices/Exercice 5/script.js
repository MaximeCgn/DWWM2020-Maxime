var ouvrir= document.getElementById("ouvrir");
var fermer=document.getElementById("fermer");
var deplacer=document.getElementById("deplacer");
var reduit=document.getElementById("reduit");

ouvrir.addEventListener("click",function(){
    fenetre=window.open("fenetre.html",'new', 'width=250 , height=200, toolbar=no, location=no, directories=no, status=no, menubar=no, scroolbars=no, resizable=no, top=300, left=400');
    return fenetre;
});

fermer.addEventListener("click",function(){
    fenetre.close();
});

reduit.addEventListener("click",function(){
        var large = (fenetre.document.body.offsetWidth / 5)*4;
		var hauteur = (fenetre.document.body.offsetHeight / 5)*4;
		fenetre.resizeTo(large,hauteur) ;
		fenetre.focus();
});

deplacer.addEventListener("click",function(){
    fenetre.moveTo(500,100);
    fenetre.focus();
});

var fenetre=fenetre();