var palavras = ["dalek", "tardis", "cyberman", "doutor", "mestre", "tempo", "vortice", "universo", "cabine", "rose", "clara", "donna", "lords", "sontarans", "ood", "sycorax", "atraxi"];

var palavra = palavras[Math.floor(Math.random() * palavras.length)];

var chances = 6;
var acertos = 0;

var imagem = 0;

for (var posicao = 0; posicao < palavra.length; posicao++) {
    var span = document.createElement("span");
    span.setAttribute('id', posicao);

    var div = document.getElementById("palavra");
    div.appendChild(span);
}

var alfabeto = "abcdefghijklmnopqrstuvwxyz"
var letras = alfabeto.split("");

for (posicao = 0; posicao < letras.length; posicao++) {
    var botao = document.createElement("button");
    var letra = document.createTextNode(letras[posicao]);

    botao.appendChild(letra);
    botao.setAttribute('onclick', 'escolheLetra(\'' + letras[posicao] + '\')');
    botao.setAttribute('id', letras[posicao]);

    var div = document.getElementById("letras");
    div.appendChild(botao);
}

function escolheLetra(letra) {

    var acertou = false;

    for (posicao = 0; posicao < palavra.length; posicao++) {
        if (letra == palavra[posicao]) {
            var span = document.getElementById(posicao);
            var l = document.createTextNode(letra);

            span.appendChild(l)

            var botao = document.getElementById(letra);
            botao.setAttribute('class', 'certa');
            botao.removeAttribute('onclick');

            acertos++;
            acertou = true

        }
    }

    if (acertou == false) {
        imagem++;
        document.getElementById("forca").src = "../assets/jogo/forca_" + imagem + ".png";

        var botao = document.getElementById(letra);
        botao.setAttribute('class', 'errada');
        botao.removeAttribute('onclick');

        chances--;
    }

    if (chances == 0) {

        titulo.innerHTML = "VOCÊ PERDEU!"

        setTimeout(() => {
            document.location.reload(true)
        }, "2000")

    }

    if (acertos == palavra.length) {

        titulo.innerHTML = "VOCÊ VENCEU!"

        setTimeout(() => {
            document.location.reload(true)
        }, "2000")
    }

}