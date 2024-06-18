let nombre = prompt('Indique su Nombre');
let apellido = prompt('Indique su Apellido');
let sueldoActual = Number(prompt('Indique su Sueldo Actual'));
let porcentaje = Number(prompt('Indique su Porcentaje de Aumento'));

let montoAumentado = sueldoActual * (porcentaje / 100);

let nuevoSueldo = sueldoActual + montoAumentado;

let titulo = document.getElementById('titulo');
titulo.innerHTML = `Calculando Sueldo`;

let subtitulo = document.getElementById('subtitulo');
subtitulo.innerHTML = `
    Empleado: ${nombre} ${apellido}<br>
    Sueldo Actual: ${sueldoActual} <br>
    Porcentaje de aumento: %${porcentaje} <br>
    Monto aumentado: ${montoAumentado} <br>
    Nuevo sueldo: ${nuevoSueldo}
`;