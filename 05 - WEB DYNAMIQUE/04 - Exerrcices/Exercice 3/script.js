
var image = document.getElementById("off");

image.addEventListener("click", function () {
    if (image.getAttribute("etat")=="off")
    {
        image.src = "on.png";
        image.setAttribute("etat","on");
    } else
    {
        image.src="off.png";
        image.setAttribute("etat","off");
    }
        
})
