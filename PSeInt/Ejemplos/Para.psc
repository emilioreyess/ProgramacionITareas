// Revisor: Emilio Jose Reyes Aragón
// Para poder ejecutar correctamente este ejemplo debe tener
// habilitada la sintaxis flexible en su perfil de lenguaje
Algoritmo sin_titulo
	// declara un arreglo de 10 elementos
	Dimensionar A(10)
	// recorre los 10 elementos y va asignandoles enteros aleatorios
	Para Cada elemento De A Hacer
		// elemento toma el contenido de cada posicion del arreglo
		// y si se modifica elemento se modifica el arreglo
		elemento <- azar(100)
	FinPara
	Escribir 'Los elementos del arreglo son:'
	// recorre los 10 elementos utilizando subindices y los muestra en pantalla
	Para i<-1 Hasta 10 Hacer
		Escribir 'Posición ', i, ': ', A[i]
	FinPara
	Escribir ''
	Escribir 'En orden inverso:' // deja una linea en blanco
	// recorre los 10 elementos en orden inverso y los muestra en una misma linea
	Para i<-10 Hasta 1 Hacer
		Escribir A[i], ' 'Sin Saltar
	FinPara
FinAlgoritmo
