var quantite1 = document.getElementById("quantite1");
var prix1 = document.getElementById("prix1");
var stotal1 = document.getElementById("stotal1");
var quantite2 = document.getElementById("quantite2");
var prix2 = document.getElementById("prix2");
var stotal2 = document.getElementById("stotal2");
var total=document.getElementById("total");

quantite1.addEventListener("change",function(){
    stotal1.value=parseInt(quantite1.value)*parseInt(prix1.value);
    total.value=parseInt(stotal1.value)+parseInt(stotal2.value);
})

prix1.addEventListener("change",function(){
    stotal1.value=parseInt(quantite1.value)*parseInt(prix1.value);
    total.value=parseInt(stotal1.value)+parseInt(stotal2.value);
})

quantite2.addEventListener("change",function(){
    stotal2.value=parseInt(quantite2.value)*parseInt(prix2.value);
    total.value=parseInt(stotal1.value)+parseInt(stotal2.value);
})

prix2.addEventListener("change",function(){
    stotal2.value=parseInt(quantite2.value)*parseInt(prix2.value);
    total.value=parseInt(stotal1.value)+parseInt(stotal2.value);
})

