// Revisor: Emilio Jose Reyes Aragón
// El objetivo del juego es mover los discos de la torre 1 a la 3 en la
// menor cantidad de movimientos posible. No se puede colocar un disco de 
// un tamanio sobre otro mas chico
// Hay una matriz que representa las torres, cada columna contiene
// nros que representan los tamanios de los discos en esas torres (solo
// interesan los valores hasta la cantidad de discos de esa torre).
// Cuantos discos tiene cada torre lo dice el vector cant_discos. 
Algoritmo Hanoi
	Dimensionar torres(3,10), cant_discos(3)
	// pedir y validar cuantos discos colocar en la primer torre
	Escribir 'Ingrese el nro de discos (1-8):'
	Leer discos
	Mientras discos<1 O discos>8 Hacer
		Escribir 'El numero de discos debe ser mayor a 0 y menor a 5:'
		Leer discos
	FinMientras
	// inicializar los datos
	cant_discos[1] <- discos
	cant_discos[2] <- 0
	cant_discos[3] <- 0
	Para i<-1 Hasta discos Hacer
		torres[1,i]<-discos-i+1
	FinPara
	// jugar!
	cant_movs <- 0
	Mientras cant_discos[3]<>discos Hacer
		Limpiar Pantalla // mientras no esten todos los discos en la tercer torre, el juego sigue
		Para i<-1 Hasta 3 Hacer
			Escribir 'Torre ', i // dibujar las tres torres
			Si cant_discos[i]=0 Entonces
				Escribir ''
			SiNo
				Para j<-cant_discos[i] Hasta 1 Con Paso -1 Hacer
					Según torres[i,j] Hacer // recorrer los discos de la torre, de arriba hacia abajo
						1:
							Escribir '                   XX' // dibujar cada disco
						2:
							Escribir '                 XXXXXX'
						3:
							Escribir '               XXXXXXXXXX'
						4:
							Escribir '             XXXXXXXXXXXXXX'
						5:
							Escribir '           XXXXXXXXXXXXXXXXXX'
						6:
							Escribir '         XXXXXXXXXXXXXXXXXXXXXX'
						7:
							Escribir '       XXXXXXXXXXXXXXXXXXXXXXXXXX'
						8:
							Escribir '     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
					FinSegún
				FinPara
			FinSi
			Escribir '   ----------------------------------'
			Escribir ''
		FinPara
		// solicitar movimiento
		Escribir 'Mover desde la torre: '
		Leer t1
		Escribir 'hacia la torre: '
		Leer t2
		Si t1<1 O t1>3 O t2<1 O t2>3 Entonces
			Escribir 'Movimiento invalido' // controlar que el nro de torre sea valido
			Esperar Tecla
		SiNo
			Si cant_discos[t1]=0 Entonces
				Escribir 'Movimiento invalido' // controlar que la torre 1 tengo al menos un disco
				Esperar Tecla
			SiNo
				disco_a_mover <- torres[t1,cant_discos[t1]]
				puede_mover <- verdadero // obtener tamanio del disco que se quiere mover
				Si cant_discos[t2]<>0 Entonces
					Si torres[t2,cant_discos[t2]]<disco_a_mover Entonces // controlar que la torre dos no tenga discos o tenga solo discos mas grandes
						puede_mover <- Falso
					FinSi
				FinSi
				Si puede_mover Entonces
					cant_movs <- cant_movs+1 // si paso todos los controles, mover
					cant_discos[t2] <- cant_discos[t2]+1
					torres[t2,cant_discos[t2]]<-disco_a_mover
					cant_discos[t1] <- cant_discos[t1]-1
				SiNo
					Escribir 'Movimiento invalido'
					Esperar Tecla
				FinSi
			FinSi
		FinSi
	FinMientras
	// mostrar resultado
	Limpiar Pantalla
	Escribir 'Juego finalizado en ', cant_movs, ' movimientos!'
FinAlgoritmo
