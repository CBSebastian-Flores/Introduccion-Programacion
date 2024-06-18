let numero = 0;
let resultado = 0;
let factorial = 1;

do {
    numero = parseInt(prompt('Ingrese el número del que quieras saber su factorial:'));
    if (isNaN(numero) || numero === 0 || numero < 1) {
        alert('Por favor, el número debe ser mayor a 0 y no debe estar vacio');
    }

} while (isNaN(numero) || numero === 0 || numero < 1);

for (let i = 1; i <= numero; i++) {
    factorial *= i;
}

resultado = factorial;

const mensajeContenido = document.getElementById('mensaje-contenido');
mensajeContenido.innerHTML = `El factorial del numero ${numero} es:`;

const factorialTotal = document.getElementById('factorial-total');
factorialTotal.innerHTML = resultado;