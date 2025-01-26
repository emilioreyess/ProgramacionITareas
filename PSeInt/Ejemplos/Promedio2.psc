// Recursor: Emilio Jose Reyes Aragón
// Calcula el promedio de una lista de N datos utilizando un SubProceso
Función prom <- Promedio (arreglo,cantidad)
	suma <- 0
	Para i<-1 Hasta cantidad Hacer
		suma <- suma+arreglo[i]
	FinPara
	prom <- suma/cantidad
FinFunción

Algoritmo Principal
	Dimensionar datos(100)
	Escribir 'Ingrese la cantidad de datos:'
	Leer n
	Para i<-1 Hasta n Hacer
		Escribir 'Ingrese el dato ', i, ':'
		Leer datos[i]
	FinPara
	Escribir 'El promedio es: ', Promedio(datos,n)
FinAlgoritmo
