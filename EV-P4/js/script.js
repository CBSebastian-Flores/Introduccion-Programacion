let productos = [];

let agregar = document.getElementById("btn-agregar");
let mostrar = document.getElementById("btn-mostrar");
let productosMostrar = document.getElementById("mostrador-datos");

agregar.addEventListener("click", agregarProducto);
mostrar.addEventListener("click", mostrarProductos);

function agregarProducto() {

    let nombre = "";
    let modelo = "";
    let cantidad = 0;

    do {
        nombre = prompt("Ingresa el nombre del producto");
        if (nombre === null || nombre === "") {
            alert("El nombre no puede estar vacio");
        }
    } while (nombre === null || nombre === "");

    do {
        modelo = prompt("Ingresa el modelo del producto");
        if (modelo === null || modelo === "") {
            alert("El modelo no puede estar vacio");
        }
    } while (modelo === null || modelo === "");

    do {
        cantidad = Number(prompt("Ingresa la cantidad de productos"));
        if (isNaN(cantidad) || cantidad < 1) {
            alert("La cantidad no puede ser menor a 0 o estar vacia");
        }
        console.log(cantidad);
    } while (isNaN(cantidad) || cantidad < 1);

    let producto = {
        id: productos.length,
        nombre: nombre,
        modelo: modelo,
        cantidad: cantidad,
    };

    productos.push(producto);

    alert("Agregando su producto... ");

    alert("Su producto ha sido agregado correctamente!🤩");
}

function mostrarProductos() {
    productosMostrar.innerHTML = ``;
    for (let i = 0; i < productos.length; i++) {
        productosMostrar.innerHTML += `
            <div class="datos-producto">
                <p>${productos[i].id}</p>
                <p>${productos[i].nombre}</p>
                <p>${productos[i].modelo}</p>
                <p>${productos[i].cantidad}</p>
            </div>
        `;
    }
}