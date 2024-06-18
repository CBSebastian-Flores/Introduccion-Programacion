Proceso calcularSueldo
	Escribir 'Indique su Nombre'
	Leer nombre
	Escribir 'Indique su Apellido'
	Leer apellido
	Escribir 'Indique su Sueldo Actual'
	Leer sueldoActual
	Escribir 'Indique su Porcentaje de Aumento'
	Leer porcentaje
	montoAumentado <- sueldoActual*(porcentaje/100)
	nuevoSueldo <- sueldoActual+montoAumentado
	Escribir 'Empleado: ', nombre, ' ', apellido
	Escribir 'Sueldo Actual: ', sueldoActual
	Escribir 'Porcentaje de aumento: %', porcentaje
	Escribir 'Monto aumentado: ', montoAumentado
	Escribir 'Nuevo sueldo:', nuevoSueldo
FinProceso
