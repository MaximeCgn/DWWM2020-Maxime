var box = document.getElementById("box");
var haut = document.getElementById("haut");
var bas = document.getElementById("bas");
var gauche = document.getElementById("gauche");
var droite = document.getElementById("droite");
var pas = 16;
var obs = document.getElementsByClassName("obstacle")



haut.addEventListener("mousedown", function () {
    var top = window.getComputedStyle(box, null).top;
    var pos = parseInt(top.substring(0, top.indexOf("p")));
    var mouv = pos - pas + "px";
    box.style.top = mouv;
})

bas.addEventListener("mousedown", function () {
    var top = window.getComputedStyle(box, null).top;
    var pos = parseInt(top.substring(0, top.indexOf("p")));
    var mouv = pos + pas + "px";
    box.style.top = mouv;

})

gauche.addEventListener("mousedown", function () {
    var left = window.getComputedStyle(box, null).left;
    var pos = parseInt(left.substring(0, left.indexOf("p")));
    var mouv = pos - pas + "px";
    box.style.left = mouv;
})

droite.addEventListener("mousedown", function () {
    var left = window.getComputedStyle(box, null).left;
    var pos = parseInt(left.substring(0, left.indexOf("p")));
    var mouv = pos + pas + "px";
    box.style.left = mouv;
})

//Clavier
document.addEventListener("keydown", (e) => {
    if (e.key == "ArrowUp") {
        var top = window.getComputedStyle(box, null).top;
        var pos = parseInt(top.substring(0, top.indexOf("p")));
        var mouv = pos - pas + "px";
        var flag = false;
        for (i = 0; i < obs.length; i++) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y - pas < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
        }
        if (flag == false) {
            box.style.top = mouv;
            console.log("oui");
        }

    } else if (e.key == "ArrowDown") {
        var top = window.getComputedStyle(box, null).top;
        var pos = parseInt(top.substring(0, top.indexOf("p")));
        var mouv = pos + pas + "px";
        var flag = false;
        for (i = 0; i < obs.length; i++) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + pas + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
        }
        if (flag == false) {
            box.style.top = mouv;
            console.log("oui");
        }
    } else if (e.key == "ArrowLeft") {
        var left = window.getComputedStyle(box, null).left;
        var pos = parseInt(left.substring(0, left.indexOf("p")));
        var mouv = pos - pas + "px";
        var flag = false;
        for (i = 0; i < obs.length; i++) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x - pas < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
        }
        if (flag == false) {
            box.style.left = mouv;
            console.log("oui");
        }
    } else if (e.key == "ArrowRight") {

        var left = window.getComputedStyle(box, null).left;
        var pos = parseInt(left.substring(0, left.indexOf("p")));
        var mouv = pos + pas + "px";
        var flag = false;
        for (i = 0; i < obs.length; i++) {
            var boxPos = { x: box.offsetLeft, y: box.offsetTop, width: box.offsetWidth, height: box.offsetHeight };
            var obsPos = { x: obs[i].offsetLeft, y: obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + pas + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                console.log("aie");
                flag = true;
            }
        }
        if (flag == false) {
            box.style.left = mouv;
            console.log("oui");
        }
    }
}
)

//LA SOURIS
document.addEventListener("click", (e) => {
    box.style.top = e.clientY + "px";
    box.style.left = e.clientX + "px";
})

//OBSTACLES



// for (i = 0; i < obs.length; i++) {
//     console.log(obs[i].offsetLeft);//Distance bord/gauche
//     console.log(obs[i].offsetTop);//Distance bord/haut
//     console.log(obs[i].offsetLeft + obs[i].offsetWidth);//Distance bord/droite
//     console.log(obs[i].offsetTop + obs[i].offsetHeight);//Distance bord/bas
// }


// for (i = 0; i < obs.length; i++) {
//     var boxPos = {x: box.offsetLeft, y:box.offsetTop, width: box.offsetWidth, height: box.offsetHeight};
//     var obsPos = {x: obs[i].offsetLeft, y:obs[i].offsetTop, width: obs[i].offsetWidth, height: obs[i].offsetHeight };

//     if (boxPos.x<obsPos.x+obsPos.width && boxPos.x + boxPos.width>obsPos.x && boxPos.y < obsPos.y+ obsPos.height && boxPos.height + boxPos.y > obsPos.y);
// }