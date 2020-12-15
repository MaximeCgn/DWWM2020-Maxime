var bouton = document.getElementById("bouton");
var liste = document.getElementById("liste");
bouton.addEventListener("click", function () {
    var dessert = document.getElementById("dessert").value;

    var create = document.createElement("li")
    create.innerHTML = dessert;
    liste.appendChild(create);
})

liste.addEventListener("click", function () {
    var li = document.getElementsByTagName("li");
    for (let i = 0 ;i< li.length; i++) {
        var line = li[i];
        line.addEventListener("click", function () {
            liste.removeChild(line);
        })
    }

})

