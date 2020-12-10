var tab =[2, 8, 98, 63, 999, 52];

for (var i = 0; i < tab.length; i++) {
    var temp;
    for (var j = 0; j <tab.length; j++) {
        if (tab[j] > tab[i]) {
            temp = tab[j];
            tab[j] = tab[i];
            tab[i] = temp;
        }
    }

}

document.write(tab);