function deplace(dx, dy) {
    var deplacement_ok = true;
    var styleCarre = window.getComputedStyle(document.getElementById('box'), null);
    var t = parseInt(styleCarre.top);
    var l = parseInt(styleCarre.left);
    var w = parseInt(styleCarre.width);
    var h = parseInt(styleCarre.height);
    var listeObs = document.querySelectorAll('.obstacle');
    var i=0;
    // listeObs.forEach(function (elt)
    
    while(i<listeObs.length){
        var tob = parseInt(styleObs[i].offsetTop);
        var lob = parseInt(styleObs[i].offsetLeft);
        var wob = parseInt(styleObs[i].offsetWidth);
        var hob = parseInt(styleObs[i].offsetHeight);
        deplacement_ok = deplacement_ok && depl_ok(tob, lob, wob, hob, t + dy, l + dx, w, h);
        i++;

    };
    if (deplacement_ok) {
        document.getElementById('carre').style.top = t + dy + 'px';
        document.getElementById('carre').style.left = l + dx + 'px';
    }
}

function depl_ok(tob, lob, wob, hob, t, l, w, h) {
    if (l < lob + wob && l + w > lob && t < tob + hob && t + h > tob) {
        return false
    }
    return true;
}