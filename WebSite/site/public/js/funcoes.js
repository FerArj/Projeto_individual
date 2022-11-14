// FUNÇÕES DOS CONTEÚDOS INFORMATIVOS

function ler_mais_conteudo1(){
    descricao1.style.display = "flex";
}

function fechar_descricao1(){
    descricao1.style.display = "none";
}

function ler_mais_conteudo2(){
    descricao2.style.display = "flex";
}

function fechar_descricao2(){
    descricao2.style.display = "none";
}

function ler_mais_conteudo3(){
    descricao3.style.display = "flex";
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

// FUNÇÕES DO FORMULARIO

// sessão
function validarSessao() {
    // aguardar();

    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var h1_usuario = document.getElementById("h1_usuario");

    if (email != null && nome != null) {
        // window.alert(`Seja bem-vindo, ${nome}!`);
        h1_usuario.innerHTML = nome_usuario;

        // finalizarAguardar();
    } else {
        window.location = "../login.html";
    }
}

function limparSessao() {
    // aguardar();
    sessionStorage.clear();
    // finalizarAguardar();
    window.location = "../login.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
        divErrosLogin.innerHTML = texto;
    }
}


// modal
function mostrarModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "flex";
}

function fecharModal() {
    var divModal = document.getElementById("div_modal");
    divModal.style.display = "none";
}

