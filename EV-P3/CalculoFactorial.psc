Proceso CalculoFactorial
	numero <- 0
	resultado <- 0
	factorial <- 1
	Repetir
		Escribir 'Ingrese el número del que quieras saber su factorial:'
		Leer numero
		Si numero<=0 Entonces
			Escribir 'Por favor, el número debe ser mayor a 0 y no debe estar vacio'
		FinSi
	Hasta Que numero>0
	Para i<-1 Hasta numero Con Paso 1 Hacer
		factorial <- factorial*i
	FinPara
	resultado <- factorial
	Escribir 'El factorial de ', numero, ' es: ', resultado
FinProceso
