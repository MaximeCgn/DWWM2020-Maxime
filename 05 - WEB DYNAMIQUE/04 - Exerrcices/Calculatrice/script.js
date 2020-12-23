// var boutons = document.getElementsByClassName("bouton");
// var result = document.getElementById("result");
// for (let i in boutons) {
//     boutons[i].addEventListener("click", function (e) {
//         if (boutons[i].getAttribute("value") == "=") {
//             var tempf = parseInt(result.innerHTML)
//             if (ope == "+") {
//                 result.innerHTML = temp + tempf;
//             } else if (ope == "-") {
//                 result.innerHTML = temp - tempf;
//             } else if (ope == "/") {
//                 result.innerHTML = temp / tempf;
//             } else if (ope == "*") {
//                 result.innerHTML = temp * tempf;
//             }
//             delete temp;
//             delete ope;

//         } else if (boutons[i].getAttribute("value") == "clear") {

//             result.innerHTML = "";
//             delete temp;
//             delete ope;
//         } else if (boutons[i].getAttribute("value") == "+") {
//             if (typeof temp == "undefined") {
//                 ope = boutons[i].getAttribute("value");
//                 temp = parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             } else {
//                 ope = boutons[i].getAttribute("value");
//                 temp += parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             }
//         } else if (boutons[i].getAttribute("value") == "-") {
//             if (typeof temp == "undefined") {
//                 ope = boutons[i].getAttribute("value");
//                 temp = parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             } else {
//                 ope = boutons[i].getAttribute("value");
//                 temp -= parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             }
//         } else if (boutons[i].getAttribute("value") == "/") {
//             if (typeof temp == "undefined") {
//                 ope = boutons[i].getAttribute("value");
//                 temp = parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             } else {
//                 ope = boutons[i].getAttribute("value");
//                 temp /= parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             }
//         } else if (boutons[i].getAttribute("value") == "*") {
//             if (typeof temp == "undefined") {
//                 ope = boutons[i].getAttribute("value");
//                 temp = parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             } else {
//                 ope = boutons[i].getAttribute("value");
//                 temp *= parseInt(result.innerHTML);
//                 result.innerHTML = "";
//             }
//         }else if (boutons[i].getAttribute("value") == "retour"){
//             result.innerHTML = result.innerHTML.slice(0,-1);
//         }else {
//             console.log(e.target.innerHTML);
//             result.innerHTML += e.target.innerHTML;
//         }
//     });
// }

var lesBoutons = document.getElementsByClassName("bouton");
var result = document.getElementById("result");


for (let i = 0; i < lesBoutons.length; i++) {
    lesBoutons[i].addEventListener("click", select)
}

var clear = document.getElementById("reset");

clear.addEventListener("click", function () {
    console.log(result.innerHTML);
    result.textContent = "";
    for (let i = 0; i < lesBoutons.length; i++) {
        lesBoutons[i].addEventListener("click", select);
    }
});

var back = document.getElementById("back");

back.addEventListener("click", function () {
    console.log(result.innerHTML);
    result.innerHTML = result.innerHTML.slice(0, -(back.textContent.length+1));
    for (let i = 0; i < lesBoutons.length; i++) {
        lesBoutons[i].addEventListener("click", select);
    }
});

function select(e) {
    var select = e.target;
    var bouton = select.textContent;
    console.log("aaaa")
    if (bouton == "=") {
        result.textContent += "=" + eval(result.textContent);
        for (let i = 0; i < lesBoutons.length; i++) {
            lesBoutons[i].removeEventListener("click", select)
        }

    }
    else {
        result.textContent += bouton;
    }
};