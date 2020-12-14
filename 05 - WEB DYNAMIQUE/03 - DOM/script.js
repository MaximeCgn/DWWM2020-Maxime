var image= document.getElementById("img");
image.src="Bc_isaac.png";
image.style.width="30%";

var text = document.getElementsByClassName("text");
for (let i=0;i<text.length;i++)
{
    text[i].style.fontSize="3em";
}

var text2=document.querySelectorAll(".text");
text2.forEach(elt=>{
    elt.style.fontSize="2em";
})

var text1=document.querySelector(".text");
text1.style.backgroundColor="yellow";

var articles=document.getElementsByTagName("article");
for (let i=0;i<articles.length;i++){
    articles[i].addEventListener("click", function(){
        for (let i=0;i<articles.length;i++)
        {
            articles[i].style.color="green";
        }
    });
}
