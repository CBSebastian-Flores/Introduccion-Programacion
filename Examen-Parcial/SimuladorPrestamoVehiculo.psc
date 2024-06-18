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
		Escribir 'El nombre y el apellido no pueden estar vac�os. Por favor, int�ntalo de nuevo.'
	SiNo
		Escribir 'Por favor, ingresa la marca del veh�culo (Volkswagen - Toyota - Kia - Hyundai - Honda - Ford - Opel):'
		Leer marca
		Si marca='' O marca=nulo O marca<>'Volkswagen' Y marca<>'Toyota' Y marca<>'Kia' Y marca<>'Hyundai' Y marca<>'Honda' Y marca<>'Ford' Y marca<>'Opel' Entonces
			Escribir 'La marca no puede estar vac�a o debe ser una de las marcas disponibles.'
		SiNo
			Escribir 'Por favor, ingresa el modelo del veh�culo:'
			Leer modelo
			Si modelo='' O modelo=nulo Entonces
				Escribir 'El modelo no puede estar vac�o.'
			SiNo
				Escribir 'Por favor, ingresa el a�o del veh�culo (2020 - 2024):'
				Leer anioVehiculo
				Si anioVehiculo<2020 O anioVehiculo>2024 Entonces
					Escribir 'El a�o ingresado no es v�lido y debe ser entre 2020 y 2024.'
				SiNo
					Escribir 'Por favor, ingresa el precio del veh�culo:'
					Leer precio
					Si precio<=0 Entonces
						Escribir 'El precio no debe estar vac�o y debe ser un n�mero positivo mayor que cero.'
					SiNo
						Escribir 'Por favor, ingresa el monto de entrada:'
						Leer entrada
						Si entrada<=0 O entrada>precio Entonces
							Escribir 'El monto de entrada no debe estar vac�o, debe ser un n�mero positivo y debe ser menor al precio del veh�culo.'
						SiNo
							Escribir 'Por favor, ingresa la cantidad de meses a financiar la compra entre 1 y 36 meses:'
							Leer mesesFinanciamiento
							Si mesesFinanciamiento<1 O mesesFinanciamiento>36 Entonces
								Escribir 'La cantidad de meses debe ser un n�mero positivo entre 1 y 36.'
							SiNo
								Escribir 'Por favor, ingresa la tasa de inter�s aplicada (entre 1% y 12%):'
								Leer tasaInteres
								Si tasaInteres<1 O tasaInteres>12 Entonces
									Escribir 'La tasa de inter�s debe ser un n�mero positivo entre 1% y 12%.'
								SiNo
									Escribir 'Ingrese su ingreso mensual (en soles entre 2000 y 15000):'
									Leer ingresoMensual
									Si ingresoMensual<2000 O ingresoMensual>15000 Entonces
										Escribir 'El monto de deudas debe ser un n�mero positivo entre 2000 y 15000.'
									SiNo
										Escribir 'Ingrese el monto de sus deudas pendientes (en soles):'
										Leer deudasPendientes
										Si deudasPendientes<0 Entonces
											Escribir 'El monto de deudas debe ser un n�mero positivo o cero.'
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
											Escribir 'Datos del veh�culo: ', marca, ' - ', modelo, ' - ', anioVehiculo
											Escribir 'Monto del cr�dito solicitado: ', montoCredito
											Escribir 'Cuota mensual estimada: ', cuotaMensualEstimada
											Escribir 'Plazo del pr�stamo: ', mesesFinanciamiento, 'meses'
											Escribir 'Tasa de inter�s aplicada: ', tasaInteres, '%'
											Escribir 'Capacidad de pago del usuario: ', capacidadPago
											Escribir 'Resultado de la simulaci�n: ', aprobacion
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
