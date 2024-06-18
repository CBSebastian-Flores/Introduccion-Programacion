let cantidad = 0;
let acumulador = 0;
let resultado = 0;

const numeros = document.getElementById('numeros');
const total = document.getElementById('promedio-total');

do {
    cantidad = parseInt(prompt('Coloque la cantidad de números a promediar'));
    if (cantidad < 0 || isNaN(cantidad) || cantidad === 0) {
        alert('Por favor, el número debe ser mayor a 0 y no debe estar vacio');
    }

} while (cantidad < 0 || isNaN(cantidad) || cantidad === 0);

for (let i = 1; i <= cantidad; i++) {

    let numero = 0;

    do {
        numero = parseInt(prompt(`Coloque el número ${i}:`));
        if (isNaN(numero) || numero === 0) {
            alert('El valor debe ser un numero')
        }
    } while (isNaN(numero) || numero === 0);

    if (i === cantidad) {
        numeros.innerHTML += `${numero}`;
        acumulador += numero;
        continue;
    }

    numeros.innerHTML += `${numero}, `;
    acumulador += numero;
}

console.log(acumulador, cantidad)

resultado = acumulador / cantidad;

total.innerHTML = `${resultado.toFixed(2)}`