Proceso boleteria
	Escribir 'Ingrese su nombre:'
	Leer nombre
	Escribir 'Ingrese su apellido:'
	Leer apellido
	precioEntrada <- 0
	ninos <- 0
	adolecentes <- 0
	adultos <- 0
	adultosMayores <- 0
	Si nombre='' O apellido='' Entonces
		Escribir 'Por favor, complete todos los campos correctamente.'
	SiNo
		Escribir 'Ingrese el precio de la entrada.'
		Leer precioEntrada
		Si precioEntrada<0 O precioEntrada=vacio Entonces
			Escribir 'Aseg�rese de que el precio sea un n�mero mayor a 0.'
		SiNo
			Escribir 'Por favor, ingrese la cantidad de entradas que desea para visitantes de 1 a 4 a�os (minimo 0):'
			Leer ninos
			Si ninos=vacio O ninos<0 Entonces
				Escribir 'El campo no puede estar vacio o ser menor a 0 y debe ser un numero.'
			SiNo
				Escribir 'Por favor, ingrese la cantidad de entradas que desea para visitantes de 5 a 12 a�os (minimo 0):'
				Leer adolecentes
				Si adolecentes=vacio O adolecentes<0 Entonces
					Escribir 'El campo no puede estar vacio o ser menor a 0 y debe ser un numero.'
				SiNo
					Escribir 'Por favor, ingrese la cantidad de entradas que desea para visitantes de 13 a 64 a�os (minimo 0):'
					Leer adultos
					Si adultos=vacio O adultos<0 Entonces
						Escribir 'El campo no puede estar vacio o ser menor a 0 y debe ser un numero.'
					SiNo
						Escribir 'Por favor, ingrese la cantidad de entradas que desea para visitantes de 65 a�os a m�s (minimo 0):'
						Leer adultosMayores
						Si adultosMayores=vacio O adultosMayores<0 Entonces
							Escribir 'El campo no puede estar vacio o ser menor a 0 y debe ser un numero.'
						SiNo
							Escribir 'Procesando los datos para calcular el precio total....'
							precioTotalAdultos <- adultos*precioEntrada
							precioTotalNinos <- 0
							precioTotalAdolescentes <- 0
							precioTotalAdultosMayores <- (adultosMayores*precioEntrada)*0.3
							precioTotal <- precioTotalAdultos+precioTotalAdultosMayores+precioTotalNinos+precioTotalAdolescentes
							Escribir 'Nombre del responsable: '+nombre+' '+apellido
							Escribir 'Cantidad de entradas para ni�os: ', ninos, ', precio total de entradas: ', precioTotalNinos
							Escribir 'Cantidad de entradas para adolescentes: ', adolecentes, ', precio total de entradas: ', precioTotalAdolescentes
							Escribir 'Cantidad de entradas para adultos: ', adultos, ', precio total de entradas: ', precioTotalAdultos
							Escribir 'Cantidad de entradas para adultos mayores: ', adultosMayores, ', precio total de entradas: ', precioTotalAdultosMayores
							Escribir 'Precio por entrada: ', precioEntrada
							Escribir 'Precio total a pagar: ', precioTotal
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
