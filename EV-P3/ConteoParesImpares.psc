Proceso ConteoParesImpares
	inicio <- 0
	final <- 0
	pares <- 0
	impares <- 0
	iterador <- 0
	Repetir
		Escribir 'Ingrese el n�mero inicial del rango:'
		Leer inicio
		Escribir 'Ingrese el n�mero final del rango:'
		Leer final
		Si inicio>final Entonces
			Escribir 'Por favor, ingrese valores v�lidos. El n�mero inicial debe ser menor o igual al n�mero final.'
		FinSi
	Hasta Que inicio<=final
	iterador <- inicio
	Mientras iterador<final Hacer
		Si iterador MOD 2=0 Entonces
			pares <- pares+1
		SiNo
			impares <- impares+1
		FinSi
		iterador <- iterador+1
	FinMientras
	Escribir 'Entre ', inicio, ' y ', final, ' hay ', pares, ' pares'
	Escribir 'Entre ', inicio, ' y ', final, ' hay ', impares, ' impares'
FinProceso
