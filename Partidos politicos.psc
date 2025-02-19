// Programa: Control sobre los partidos políticos
Algoritmo EleccionesPartidoPolitico
	Definir NUM_VOTANTES, NUM_RONDAS, NUM_CANDIDATOS Como Entero
	Definir CANDIDATOS Como Cadena
	Definir VOTOS, VOTOS_TOTALES Como Entero
	Definir i, j, INDICE_GANADOR, INDICE_PERDEDOR Como Entero
	Definir OPCION Como Cadena
	NUM_VOTANTES <- 50
	NUM_RONDAS <- 5
	NUM_CANDIDATOS <- 3
	Dimensionar CANDIDATOS(NUM_CANDIDATOS+1)
	Dimensionar VOTOS(NUM_CANDIDATOS+1,NUM_RONDAS+1)
	Dimensionar VOTOS_TOTALES(NUM_CANDIDATOS+1)
	// Pedir los nombres de los candidatos
	Para i<-1 Hasta NUM_CANDIDATOS Hacer
		Escribir 'Ingrese el nombre del candidato ', i, ': '
		Leer CANDIDATOS[i]
	FinPara
	Repetir
		// Generar votos aleatorios
		Para i<-1 Hasta NUM_CANDIDATOS Hacer
			Para j<-1 Hasta NUM_RONDAS Hacer
				VOTOS[i,j]<-Aleatorio(0,NUM_VOTANTES)
			FinPara
		FinPara
		// Mostrar la tabla de resultados
		Escribir 'Resultados de las votaciones:'
		Escribir '---------------------------------'
		Escribir 'Candidato', '  R1', '  R2', '  R3', '  R4', '  R5', '  Total'
		Para i<-1 Hasta NUM_CANDIDATOS Hacer
			VOTOS_TOTALES[i] <- 0
			Escribir CANDIDATOS[i], '  'Sin Saltar
			Para j<-1 Hasta NUM_RONDAS Hacer
				Escribir VOTOS[i,j], '  'Sin Saltar
				VOTOS_TOTALES[i] <- VOTOS_TOTALES[i]+VOTOS[i,j]
			FinPara
			Escribir VOTOS_TOTALES[i]
		FinPara
		// Determinar el ganador y el candidato con menos votos
		INDICE_GANADOR <- 1
		INDICE_PERDEDOR <- 1
		Para i<-2 Hasta NUM_CANDIDATOS Hacer
			Si VOTOS_TOTALES[i]>VOTOS_TOTALES[INDICE_GANADOR] Entonces
				INDICE_GANADOR <- i
			FinSi
			Si VOTOS_TOTALES[i]<VOTOS_TOTALES[INDICE_PERDEDOR] Entonces
				INDICE_PERDEDOR <- i
			FinSi
		FinPara
		Escribir 'El ganador es: ', CANDIDATOS[INDICE_GANADOR], ' con ', VOTOS_TOTALES[INDICE_GANADOR], ' votos.'
		Escribir 'El candidato con menos votos es: ', CANDIDATOS[INDICE_PERDEDOR], ' con ', VOTOS_TOTALES[INDICE_PERDEDOR], ' votos.'
		// Preguntar si desea repetir la elección
		Escribir '¿Desea realizar otra elección? (S/N): '
		Leer OPCION
	Hasta Que OPCION<>'S' Y OPCION<>'s'
FinAlgoritmo
