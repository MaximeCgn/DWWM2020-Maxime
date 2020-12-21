var box = document.getElementById("box");
var haut = document.getElementById("haut");
var bas = document.getElementById("bas");
var gauche = document.getElementById("gauche");
var droite = document.getElementById("droite");
var pas = 16;
var obs = document.getElementsByClassName("obstacle");
var arr = document.getElementById("arr");
var chrono = document.getElementById("timer");

//CHEAT
var keysPressed= {};

document.addEventListener('keydown',(e)=>{
    keysPressed[e.key]= true;
    console.log("text");
    if (keysPressed['6'] && e.key=="9")
    {
        alert("Cheat enabled");
        for (let i = obs.length-1;i>0;i--){
            obs[i].className="invisible";
        }
    }

    document.addEventListener('keyup',(e)=>{
        delete keysPressed[e.key];
    })
})

//TIMER
var min = 0;
var sec = 0 ;
function timer(){
    sec++;
    if(sec==60){
        sec=0;
        min++;
    }
    if (min<10){
        time="0"+min;
    }
    else{
        time=min;
    }
    if(sec<10){
        time+=":0"+sec
    }
    else{
        time+= ":"+sec
    }
    chrono.innerHTML=time;
    var horloge=setTimeout("timer()",1000);
}

//Clavier
var drapo=true;
var win=false;
document.addEventListener("keydown", (e) => {
    if (drapo==true){
        drapo=false;
        timer();
    }

    
    //VERS LE HAUT
    if (e.key == "ArrowUp") {
        var top = window.getComputedStyle(box, null).top;
        var pos = parseInt(top.substring(0, top.indexOf("p")));
        var mouv = pos - pas + "px";
        var flag = false;
        var i=0;
        while (i < obs.length && flag==false) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y - pas < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
            i++;
        }
        var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
        if (flag == false) {
            box.style.top = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y - pas < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
                win=true;
            }
        }


        //VERS LE BAS
    } else if (e.key == "ArrowDown") {
        var top = window.getComputedStyle(box, null).top;
        var pos = parseInt(top.substring(0, top.indexOf("p")));
        var mouv = pos + pas + "px";
        var flag = false;
        var i=0;
        while (i < obs.length && flag==false){
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + pas + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
            i++;
        }
        if (flag == false) {
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.top = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + pas + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
                win=true;
            }
        }

        //VERS LA GAUCHE
    } else if (e.key == "ArrowLeft") {
        var left = window.getComputedStyle(box, null).left;
        var pos = parseInt(left.substring(0, left.indexOf("p")));
        var mouv = pos - pas + "px";
        var flag = false;
        var i=0;
        while (i < obs.length && flag==false) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x - pas < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
            i++;
        }
        if (flag == false) {
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.left = mouv;
            console.log("oui");
            if (boxPos.x - pas < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
                win=true;
            }
        }

        //VERS LA DROITE
    } else if (e.key == "ArrowRight") {

        var left = window.getComputedStyle(box, null).left;
        var pos = parseInt(left.substring(0, left.indexOf("p")));
        var mouv = pos + pas + "px";
        var flag = false;
        var i=0;
        while (i < obs.length && flag==false) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + pas + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
            i++;
        }
        if (flag == false) {
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.left = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + pas + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
                win=true;
            }
        }

       if (win==true){
        clearTimeout(horloge);
    } 
    }
    
}
)

//J'ai pas fait les collisions ici encore
function deplaceSouris(e)
{
    carre.style.top = parseInt(e.clientY) + ecartY + "px";
    carre.style.left = parseInt(e.clientX) + ecartX + "px";
};

var ecartY, ecartX;

var carre = document.getElementById('box');
var flagMouv = false;

carre.addEventListener("mousedown", (e)=>
{
     ecartY = parseInt(window.getComputedStyle(carre).top) - parseInt(e.clientY);
     ecartX = parseInt(window.getComputedStyle(carre).left) - parseInt(e.clientX);
    flagMouv = true;
});

document.addEventListener("mousemove", (e) =>
{
    if(flagMouv == true)
    {
        deplaceSouris(e);
    }
});

carre.addEventListener("mouseup", (e) =>
{
    flagMouv = false;
});