
let circunferencia = Number(prompt('Por favor, introduce la circunferencia: '));

let radio = circunferencia / (2 * Math.PI)

let titulo = document.getElementById('titulo');
titulo.innerHTML = `Calculando el Radio de la Circunferencia`;

let subtitulo = document.getElementById('subtitulo');
subtitulo.innerHTML = `
    La circunferencia es ${circunferencia}cm y el radio calculado es ${radio}cm.
`;