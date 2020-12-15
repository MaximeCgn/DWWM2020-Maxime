var img=document.getElementById("img");

img.addEventListener("click",function(){
setTimeout(function(){
if (img.getAttribute("etat")=="recto")
{
    img.src="Bc_isaac.png";
    img.setAttribute("etat","verso");
} else {
    img.src="biblethump.png";
    img.setAttribute("etat","recto");
}
},3000)})


// setInterval(function(){
//     if (img.getAttribute("etat")=="recto")
//     {
//         img.src="Bc_isaac.png";
//         img.setAttribute("etat","verso");
//     } else {
//         img.src="biblethump.png";
//         img.setAttribute("etat","recto");
//     }
//     },500)