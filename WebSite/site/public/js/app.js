// FUNÇÕES DOS CONTEÚDOS INFORMATIVOS

function ler_mais_conteudo1(){
    descricao1.style.display = "block";
}

function fechar_descricao1(){
    descricao1.style.display = "none";
}

function ler_mais_conteudo2(){
    descricao2.style.display = "block";
}

function fechar_descricao2(){
    descricao2.style.display = "none";
}

function ler_mais_conteudo3(){
    descricao3.style.display = "block";
}

function fechar_descricao3(){
    descricao3.style.display = "none";
}

// TRANSIÇÃO AUTOMATICA DO CARROSSEL

var n = 1;
document.getElementById("radio1").checked = true;

setInterval(function(){
    nextImage();
}, 4000);

function nextImage(){
    n++
    if(n > 14){
        n = 1;
    }

    document.getElementById("radio"+n).checked = true;
}