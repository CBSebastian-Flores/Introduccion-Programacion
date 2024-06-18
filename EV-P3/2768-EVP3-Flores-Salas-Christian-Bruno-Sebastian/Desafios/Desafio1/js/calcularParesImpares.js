let final = 0;

let pares = 0;
let impares = 0;

let iterador = 1;

do {
    final = parseInt(prompt("Ingrese hasta que numero quiere:"));

    if (isNaN(final) || 0 > final) {
        alert("Por favor, ingrese valores válidos. El valor debe ser mayor a 0");
    }

} while (isNaN(final) || 0 > final);

while (iterador < final) {
    if (iterador % 2 === 0) {
        pares++;
        console.log(iterador, "es Par");
    } else {
        impares++;
        console.log(iterador, "es ImPar");
    }
    iterador++;
}

const mensaje = document.getElementById('mensaje-contenido');
mensaje.innerHTML = `Los numeros pares entre 0 y ${final} son:`;

const paresTexto = document.getElementById('pares-texto');
paresTexto.innerHTML = pares;

const imparesTexto = document.getElementById('impares-texto');
imparesTexto.innerHTML = impares;