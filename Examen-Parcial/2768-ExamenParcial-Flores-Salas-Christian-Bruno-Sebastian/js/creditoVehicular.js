const nombres = prompt("Por favor, ingresa tus nombres:");
const apellidos = prompt("Por favor, ingresa tus apellidos:");

let aprobacion = ''

if (nombres === '' || nombres === null || apellidos === '' || apellidos === null) {
    alert("El nombre y el apellido no pueden estar vacíos. Por favor, inténtalo de nuevo.");
} else {
    let marca = prompt("Por favor, ingresa la marca del vehículo ( Volkswagen - Toyota - Kia - Hyundai - Honda - Ford - Opel )");
    marca = marca.toLowerCase();
    if (marca === '' || marca === null || marca !== 'volkswagen' && marca !== 'toyota' && marca !== 'kia' && marca !== 'hyundai' && marca !== 'honda' && marca !== 'ford' && marca !== 'opel') {
        alert("La marca no puede estar vacía o debe ser una de las marcas disponibles")
    } else {
        const modelo = prompt("Por favor, ingresa el modelo del vehículo:");
        if (modelo === '' || modelo === null) {
            alert("El modelo no puede estar vacío.");
        } else {
            const anioVehiculo = parseInt(prompt("Por favor, ingresa el año del vehículo (2020 - 2024)"));
            if (isNaN(anioVehiculo) || anioVehiculo < 2020 || anioVehiculo > 2024) {
                alert("El año ingresado no es válido y debe ser entre 2020 y 2024.");
            } else {
                const precio = parseFloat(prompt("Por favor, ingresa el precio del vehículo en soles:"));
                if (isNaN(precio) || precio <= 0) {
                    alert("El precio no debe estar vacio y debe ser un número positivo mayor que cero");
                } else {
                    const entrada = parseFloat(prompt("Por favor, ingresa el monto de entrada en soles:"));
                    if (isNaN(entrada) || entrada <= 0 || entrada > precio) {
                        alert("El monto de entrada no debe estar vacio, debe ser un número positivo y debe ser menor al precio del vehículo.");
                    } else {
                        const mesesFinanciamiento = parseInt(prompt("Por favor, ingresa la cantidad de meses a financiar la compra entre 1 y 36 meses"));
                        if (isNaN(mesesFinanciamiento) || mesesFinanciamiento < 1 || mesesFinanciamiento > 36) {
                            alert("La cantidad de meses debe ser un número positivo entre 1 y 36.");
                        } else {
                            const tasaInteres = parseFloat(prompt("Por favor, ingresa la tasa de interés aplicada (entre 1% y 12%):"));
                            if (isNaN(tasaInteres) || tasaInteres < 1 || tasaInteres > 12) {
                                alert("La tasa de interés debe ser un número positivo entre 1% y 12%.");
                            } else {
                                const ingresoMensual = parseFloat(prompt('Ingrese su ingreso mensual en soles (entre 2000 y 15000):'));
                                if (isNaN(ingresoMensual) || ingresoMensual < 2000 || ingresoMensual > 15000) {
                                    alert("El monto de deudas debe ser un número positivo entre 2000 y 15000.");
                                } else {
                                    const deudasPendientes = parseFloat(prompt("Ingrese el monto de sus deudas pendientes en soles:"));
                                    if (isNaN(deudasPendientes) || deudasPendientes < 0) {
                                        alert("El monto de deudas debe ser un número positivo o cero.");
                                    } else {
                                        const montoCredito = precio - entrada;
                                        const cuotaMensualEstimada = (montoCredito / mesesFinanciamiento) + ((montoCredito / mesesFinanciamiento) * (tasaInteres / 100));
                                        const capacidadPago = (ingresoMensual - deudasPendientes) / cuotaMensualEstimada; //600;

                                        let responsable = document.getElementById('responsable');
                                        let filaResultados = document.getElementById('fila-tipo-resultado');
                                        let estadoAprobacion = document.getElementById('estado-aprobacion');

                                        if (capacidadPago >= 1) {
                                            aprobacion = 'Aprobado';
                                            estadoAprobacion.classList.add('aprobado')
                                        } else {
                                            aprobacion = 'Rechazado';
                                            estadoAprobacion.classList.add('rechazado')
                                        }

                                        responsable.innerHTML = `<p>Nombre del responsable: ${nombres} ${apellidos}</p>`;

                                        filaResultados.innerHTML = `
                                            <p>${marca.toUpperCase()} - ${modelo} - ${anioVehiculo}</p>
                                            <p>S/${montoCredito.toFixed(2)}</p>
                                            <p>S/${cuotaMensualEstimada.toFixed(2)}</p>
                                            <p>${mesesFinanciamiento} meses</p>
                                            <p>${tasaInteres}%</p>
                                            <p>${capacidadPago.toFixed(2)}</p>
                                        `;
                                        estadoAprobacion.innerHTML=`<p>Estado de aprobación: <span>${aprobacion}</span></p>`;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}