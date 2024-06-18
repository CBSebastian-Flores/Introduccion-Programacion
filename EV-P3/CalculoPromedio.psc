Proceso CalculoPromedio
	cantidad <- 0
	acumulador <- 0
	resultado <- 0
	Repetir
		Escribir 'Coloque la cantidad de números a promediar:'
		Leer cantidad
		Si cantidad<=0 Entonces
			Escribir 'Por favor, el número debe ser mayor a 0 y no debe estar vacio'
		FinSi
	Hasta Que cantidad>0
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir 'Coloque el número ', i, ':'
		Leer numero
		acumulador <- acumulador+numero
	FinPara
	resultado <- acumulador/cantidad
	Escribir 'El promedio de los ', cantidad, ' numeros es ', resultado
FinProceso
