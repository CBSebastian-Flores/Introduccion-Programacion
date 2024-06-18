Proceso ConteoParesImpares
	final <- 0
	pares <- 0
	impares <- 0
	iterador <- 1
	Repetir
		Escribir 'Ingrese hasta que numero quiere ver los pares e impares:'
		Leer final
		Si 0>final Entonces
			Escribir 'Por favor, ingrese valores válidos. El dato debe ser mayor a 0.'
		FinSi
	Hasta Que 0<final
	Mientras iterador<=final Hacer
		Si iterador MOD 2=0 Entonces
			pares <- pares+1
		SiNo
			impares <- impares+1
		FinSi
		iterador <- iterador+1
	FinMientras
	Escribir 'Entre 0 y ', final, ' hay ', pares, ' pares'
	Escribir 'Entre 0 y ', final, ' hay ', impares, ' impares'
FinProceso
