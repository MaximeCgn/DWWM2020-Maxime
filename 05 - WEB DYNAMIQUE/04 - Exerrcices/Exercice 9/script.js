var box = document.getElementById("box");
var haut = document.getElementById("haut");
var bas = document.getElementById("bas");
var gauche = document.getElementById("gauche");
var droite = document.getElementById("droite");
var pas = 16;




haut.addEventListener("mousedown",function(){
    var top = window.getComputedStyle(box,null).top;
    var pos=parseInt(top.substring(0,top.indexOf("p")));
    var mouv=pos-pas+"px";
    box.style.top=mouv;
})

bas.addEventListener("mousedown",function(){
    var top = window.getComputedStyle(box,null).top;
    var pos=parseInt(top.substring(0,top.indexOf("p")));
    var mouv=pos+pas+"px";
    box.style.top=mouv;

})

gauche.addEventListener("mousedown",function(){
    var left = window.getComputedStyle(box,null).left;
    var pos=parseInt(left.substring(0,left.indexOf("p")));
    var mouv=pos-pas+"px";
    box.style.left=mouv;
})

droite.addEventListener("mousedown",function(){
    var left = window.getComputedStyle(box,null).left;
    var pos=parseInt(left.substring(0,left.indexOf("p")));
    var mouv=pos+pas+"px";
    box.style.left=mouv;
})

//Clavier
document.addEventListener("keydown",(e)=>{
    if (e.key=="ArrowUp"){
        var top = window.getComputedStyle(box,null).top;
    var pos=parseInt(top.substring(0,top.indexOf("p")));
    var mouv=pos-pas+"px";
    box.style.top=mouv;
    } else if (e.key=="ArrowDown")
    {
        var top = window.getComputedStyle(box,null).top;
    var pos=parseInt(top.substring(0,top.indexOf("p")));
    var mouv=pos+pas+"px";
    box.style.top=mouv;
    } else if (e.key=="ArrowLeft")
    {
        var left = window.getComputedStyle(box,null).left;
    var pos=parseInt(left.substring(0,left.indexOf("p")));
    var mouv=pos-pas+"px";
    box.style.left=mouv;
    } else if (e.key=="ArrowRight")
    {
        var left = window.getComputedStyle(box,null).left;
    var pos=parseInt(left.substring(0,left.indexOf("p")));
    var mouv=pos+pas+"px";
    box.style.left=mouv;
    }
}
)

//LA SOURIS

//OBSTACLES

var obs = document.getElementsByClassName("obstacle")

for (i=0;i<obs.length;i++)
{
    console.log(obs[i].offsetLeft);//Distance bord/gauche
    console.log(obs[i].offsetTop);//Distance bord/haut
    console.log(obs[i].offsetLeft+obs[i].offsetWidth);//Distance bord/droite
    console.log(obs[i].offsetTop+obs[i].offsetWidth);//Distance bord/bas
}
