let cantidad = 0;
let acumulador = 0;
let resultado = 0;

do {
    cantidad = parseInt(prompt('Coloque la cantidad de números a promediar'));
    if (cantidad < 0 || isNaN(cantidad) || cantidad === 0) {
        alert('Por favor, el número debe ser mayor a 0 y no debe estar vacio');
    }

} while (cantidad < 0 || isNaN(cantidad) || cantidad === 0);

for (let i = 1; i <= cantidad; i++) {
    let numero = parseInt(prompt(`Coloque el número ${i}:`));
    acumulador += numero;
}

resultado = acumulador / cantidad;

document.write(`El promedio de los ${cantidad} numeros es ${resultado}`)