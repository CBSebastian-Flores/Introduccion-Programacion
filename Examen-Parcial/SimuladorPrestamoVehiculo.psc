Proceso SimuladorPrestamoVehiculo
	Escribir 'Por favor, ingresa tu nombre:'
	Leer nombre
	Escribir 'Por favor, ingresa tu apellido:'
	Leer apellido
	marca <- ''
	modelo <- ''
	anioVehiculo <- 0
	precio <- 0
	entrada <- 0
	mesesFinanciamiento <- 0
	tasaInteres <- 0
	ingresoMensual <- 0
	deudasPendientes <- 0
	montoCredito <- 0
	cuotaMensualEstimada <- 0
	capacidadPago <- 0
	aprobacion <- ''
	Si nombre='' O nombre=nulo O apellido='' O apellido=nulo Entonces
		Escribir 'El nombre y el apellido no pueden estar vacíos. Por favor, inténtalo de nuevo.'
	SiNo
		Escribir 'Por favor, ingresa la marca del vehículo (Volkswagen - Toyota - Kia - Hyundai - Honda - Ford - Opel):'
		Leer marca
		Si marca='' O marca=nulo O marca<>'Volkswagen' Y marca<>'Toyota' Y marca<>'Kia' Y marca<>'Hyundai' Y marca<>'Honda' Y marca<>'Ford' Y marca<>'Opel' Entonces
			Escribir 'La marca no puede estar vacía o debe ser una de las marcas disponibles.'
		SiNo
			Escribir 'Por favor, ingresa el modelo del vehículo:'
			Leer modelo
			Si modelo='' O modelo=nulo Entonces
				Escribir 'El modelo no puede estar vacío.'
			SiNo
				Escribir 'Por favor, ingresa el año del vehículo (2020 - 2024):'
				Leer anioVehiculo
				Si anioVehiculo<2020 O anioVehiculo>2024 Entonces
					Escribir 'El año ingresado no es válido y debe ser entre 2020 y 2024.'
				SiNo
					Escribir 'Por favor, ingresa el precio del vehículo:'
					Leer precio
					Si precio<=0 Entonces
						Escribir 'El precio no debe estar vacío y debe ser un número positivo mayor que cero.'
					SiNo
						Escribir 'Por favor, ingresa el monto de entrada:'
						Leer entrada
						Si entrada<=0 O entrada>precio Entonces
							Escribir 'El monto de entrada no debe estar vacío, debe ser un número positivo y debe ser menor al precio del vehículo.'
						SiNo
							Escribir 'Por favor, ingresa la cantidad de meses a financiar la compra entre 1 y 36 meses:'
							Leer mesesFinanciamiento
							Si mesesFinanciamiento<1 O mesesFinanciamiento>36 Entonces
								Escribir 'La cantidad de meses debe ser un número positivo entre 1 y 36.'
							SiNo
								Escribir 'Por favor, ingresa la tasa de interés aplicada (entre 1% y 12%):'
								Leer tasaInteres
								Si tasaInteres<1 O tasaInteres>12 Entonces
									Escribir 'La tasa de interés debe ser un número positivo entre 1% y 12%.'
								SiNo
									Escribir 'Ingrese su ingreso mensual (en soles entre 2000 y 15000):'
									Leer ingresoMensual
									Si ingresoMensual<2000 O ingresoMensual>15000 Entonces
										Escribir 'El monto de deudas debe ser un número positivo entre 2000 y 15000.'
									SiNo
										Escribir 'Ingrese el monto de sus deudas pendientes (en soles):'
										Leer deudasPendientes
										Si deudasPendientes<0 Entonces
											Escribir 'El monto de deudas debe ser un número positivo o cero.'
										SiNo
											montoCredito <- precio-entrada
											cuotaMensualEstimada <- (montoCredito/mesesFinanciamiento)+((montoCredito/mesesFinanciamiento)*(tasaInteres/100))
											capacidadPago <- (ingresoMensual-deudasPendientes)/cuotaMensualEstimada
											Si capacidadPago>=1 Entonces
												aprobacion <- 'Aprobado'
											SiNo
												aprobacion <- 'Rechazado'
											FinSi
											Escribir 'Nombre: ', nombre, ' ', apellido
											Escribir 'Datos del vehículo: ', marca, ' - ', modelo, ' - ', anioVehiculo
											Escribir 'Monto del crédito solicitado: ', montoCredito
											Escribir 'Cuota mensual estimada: ', cuotaMensualEstimada
											Escribir 'Plazo del préstamo: ', mesesFinanciamiento, 'meses'
											Escribir 'Tasa de interés aplicada: ', tasaInteres, '%'
											Escribir 'Capacidad de pago del usuario: ', capacidadPago
											Escribir 'Resultado de la simulación: ', aprobacion
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
