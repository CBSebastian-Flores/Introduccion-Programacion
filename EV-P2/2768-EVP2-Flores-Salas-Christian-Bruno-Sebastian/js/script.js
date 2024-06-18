let nombre = prompt('Ingrese su nombre:');
let apellido = prompt('Ingrese su apellido:');
let precioEntrada = 0;
let ninos = 0; // de 1 a 4 años
let adolecentes = 0; // de 5 a 12 años
let adultos = 0; // de 13 a 64 años
let adultosMayores = 0; // de 65 años en adelante

if (nombre === '' || apellido === '') {
    alert('Por favor, complete todos los campos correctamente.');
} else {
    precioEntrada = parseFloat(prompt('Ingrese el precio de la entrada.'));

    if (precioEntrada < 0 || isNaN(precioEntrada)) {
        alert('Asegúrese de que el precio sea un número mayor a 0.');
    } else {
        ninos = Number(prompt('Por favor, ingrese la cantidad de entradas que desea para visitantes de 1 a 4 años (minimo 0):'));

        if (ninos === "" || isNaN(ninos) || ninos < 0) {
            alert('El campo no puede estar vacio o ser menor a 0 y debe ser un numero.');
        } else {
            adolecentes = Number(prompt('Por favor, ingrese la cantidad de entradas que desea para visitantes de 5 a 12 años (minimo 0):'));

            if (adolecentes === "" || isNaN(adolecentes) || adolecentes < 0) {
                alert('El campo no puede estar vacio o ser menor a 0 y debe ser un numero.');
            } else {
                adultos = Number(prompt('Por favor, ingrese la cantidad de entradas que desea para visitantes de 13 a 64 años (minimo 0):'));

                if (adultos === "" || isNaN(adultos) || adultos < 0) {
                    alert('El campo no puede estar vacio o ser menor a 0 y debe ser un numero.');
                } else {
                    adultosMayores = Number(prompt('Por favor, ingrese la cantidad de entradas que desea para visitantes de 65 años a más (minimo 0):'));

                    if (adultosMayores === "" || isNaN(adultosMayores) || adultosMayores < 0) {
                        alert('El campo no puede estar vacio o ser menor a 0 y debe ser un numero.');
                    } else {
                        alert('Procesando los datos para calcular el precio total....');

                        let precioTotalAdultos = adultos * precioEntrada; // Mayores de edad
                        let precioTotalNinos = 0; // Niños de 1 a 4 años entran gratis
                        let precioTotalAdolescentes = 0; // Adolescentes de 5 a 12 años entran gratis
                        let precioTotalAdultosMayores = (adultosMayores * precioEntrada) * 0.3; // Adultos mayores tienen un 70% de descuento

                        let precioTotal = precioTotalAdultos + precioTotalAdultosMayores + precioTotalNinos + precioTotalAdolescentes;

                        let responsable = document.getElementById("responsable");
                        responsable.innerHTML = `<p>Nombre del responsable: <span style="font-weight: bold;">${nombre} ${apellido}</span> </p>`;

                        let filaCantidadEntreda = document.getElementById("fila-cantidad-entrada");
                        filaCantidadEntreda.innerHTML = `
                            <p style="font-weight: bold;">Cantidad</p>
                            <p>${ninos}</p>
                            <p>${adolecentes}</p>
                            <p>${adultos}</p>
                            <p>${adultosMayores}</p>
                        `;

                        let filaPrecioEntreda = document.getElementById("fila-precio-entrada");
                        filaPrecioEntreda.innerHTML = `
                            <p style="font-weight: bold;">Precio Entradas</p>
                            <p>${precioTotalNinos.toFixed(2)}</p>
                            <p>${precioTotalAdolescentes.toFixed(2)}</p>
                            <p>${precioTotalAdultos.toFixed(2)}</p>
                            <p>${precioTotalAdultosMayores.toFixed(2)}</p>
                        `

                        let precioPorEntrada = document.getElementById("precio-por-entrada")
                        precioPorEntrada.innerHTML = `<p>Precio por Entrada: <span style="font-weight: bold;">${ precioEntrada.toFixed(2) }</span> </p>`;

                        let resultado = document.getElementById("resultado");
                        resultado.innerHTML = `<p>Precio Total a Pagar: <span style="font-weight: bold;">${ precioTotal.toFixed(2) }</span> </p>`;
                    }
                }
            }
        }
    }
}
