var p1 = document.getElementById("p1");
var p2 = document.getElementById("p2");

p1.addEventListener("click", function () {
    p1.style.color = "red";
});

p2.addEventListener("click", function () {
    p2.style.color = "yellow";
});


var titre = document.getElementsByTagName("h1");
for (let i = 0; i < titre.length; i++) {
    titre[i].style.color = "black";
}
console.log(titre);
for (let i = 0; i < titre.length; i++) {
    titre[i].addEventListener("click", function () {
        for (let i=0;i<titre.length;i++){
        if (titre[i].style.color == "black") {
            titre[i].style.color = "red";
        
        } else if (titre[i].style.color == "red") {
            titre[i].style.color = "yellow";
        } else if (titre[i].style.color == "yellow") {
            titre[i].style.color = "green";
        } else if (titre[i].style.color == "green") {
            titre[i].style.color = "black";
        }
    }
    })
}


