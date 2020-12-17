var boutons = document.getElementsByClassName("bouton");
var result = document.getElementById("result");
for (let i in boutons) {
    boutons[i].addEventListener("click", function (e) {
        if (boutons[i].getAttribute("value") == "=") {
            var tempf = parseInt(result.innerHTML)
            if (ope == "+") {
                result.innerHTML = temp + tempf;
            } else if (ope == "-") {
                result.innerHTML = temp - tempf;
            } else if (ope == "/") {
                result.innerHTML = temp / tempf;
            } else if (ope == "*") {
                result.innerHTML = temp * tempf;
            }
            delete temp;
            delete ope;

        } else if (boutons[i].getAttribute("value") == "clear") {

            result.innerHTML = "";
            delete temp;
            delete ope;
        } else if (boutons[i].getAttribute("value") == "+") {
            if (typeof temp == "undefined") {
                ope = boutons[i].getAttribute("value");
                temp = parseInt(result.innerHTML);
                result.innerHTML = "";
            } else {
                ope = boutons[i].getAttribute("value");
                temp += parseInt(result.innerHTML);
                result.innerHTML = "";
            }
        } else if (boutons[i].getAttribute("value") == "-") {
            if (typeof temp == "undefined") {
                ope = boutons[i].getAttribute("value");
                temp = parseInt(result.innerHTML);
                result.innerHTML = "";
            } else {
                ope = boutons[i].getAttribute("value");
                temp -= parseInt(result.innerHTML);
                result.innerHTML = "";
            }
        } else if (boutons[i].getAttribute("value") == "/") {
            if (typeof temp == "undefined") {
                ope = boutons[i].getAttribute("value");
                temp = parseInt(result.innerHTML);
                result.innerHTML = "";
            } else {
                ope = boutons[i].getAttribute("value");
                temp /= parseInt(result.innerHTML);
                result.innerHTML = "";
            }
        } else if (boutons[i].getAttribute("value") == "*") {
            if (typeof temp == "undefined") {
                ope = boutons[i].getAttribute("value");
                temp = parseInt(result.innerHTML);
                result.innerHTML = "";
            } else {
                ope = boutons[i].getAttribute("value");
                temp *= parseInt(result.innerHTML);
                result.innerHTML = "";
            }
        } else {
            console.log(e.target.innerHTML);
            result.innerHTML += e.target.innerHTML;
        }
    });
}
