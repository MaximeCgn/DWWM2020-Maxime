var box = document.getElementById("box");
var haut = document.getElementById("haut");
var bas = document.getElementById("bas");
var gauche = document.getElementById("gauche");
var droite = document.getElementById("droite");
var pas = 16;
var obs = document.getElementsByClassName("obstacle");
var arr = document.getElementById("arr");

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
        var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
        if (flag == false) {
            box.style.top = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y - pas < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
            }
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
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.top = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + pas + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
            }
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
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.left = mouv;
            console.log("oui");
            if (boxPos.x - pas < obsPos.x + obsPos.width &&
                boxPos.x + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
            }
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
            var obsPos = { x: arr.offsetLeft, y: arr.offsetTop, width: arr.offsetWidth, height: arr.offsetHeight };
            box.style.left = mouv;
            console.log("oui");
            if (boxPos.x < obsPos.x + obsPos.width &&
                boxPos.x + pas + boxPos.width > obsPos.x &&
                boxPos.y < obsPos.y + obsPos.height &&
                boxPos.height + boxPos.y > obsPos.y) {
                alert("GAGNÉ");
            }
        }
    }
}
)