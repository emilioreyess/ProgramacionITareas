// Revisor: Emilio Jose Reyes Aragón
// Problema Ejemplo:
// Se ingresan los precios de 5 articulos y las cantidades vendidas
// por una empresa en sus 4 sucursales. Informar:
// * Las cantidades totales de cada articulo.
// * La cantidad de articulos en la sucursal 2.
// * La cantidad del articulo 3 en la sucursal 1.
// * La recaudacion total de cada sucursal.
// * La recaudacion total de la empresa.
// * La sucursal de mayor recaudacion.
Algoritmo Sucursales
	// Inicializar Prec=Arreglo de precios y Cant=Arreglo para cantidades
	Dimensionar Prec(5), Cant(4,5)
	// Leer Precios
	Para i<-1 Hasta 5 Hacer
		Escribir 'Ingrese Precio Articulo ', i, ':'
		Leer Prec[i]
	FinPara
	// Leer Cantidades
	Para J<-1 Hasta 4 Hacer
		Para i<-1 Hasta 5 Hacer
			Escribir 'Ingrese Cant. de Articulo ', i, ', en Sucursal ', J, ':'
			Leer Cant[J,i]
		FinPara
	FinPara
	// Sumar cantidades por articulos
	Escribir 'Cantidades por articulos:'
	Para i<-1 Hasta 5 Hacer
		Suma <- Cant[1,i]+Cant[2,i]+Cant[3,i]+Cant[4,i]
		Escribir 'Total articulo ', i, ':', Suma
	FinPara
	// Informar Total de Articulos Sucursal 2
	Suc2 <- 0
	Para i<-1 Hasta 5 Hacer
		Suc2 <- Suc2+Cant[2,i]
	FinPara
	Escribir 'Total Sucursal 2:', Suc2
	// Informar Sucursal 1, Articulo 3:
	Escribir 'Sucursal 1, Articulo 3:', Cant[1,3]
	// Acumular total de cada sucursal (TotSuc) y
	// total de la empresa (TotEmp)
	MayorRec <- 0
	NumMayor <- 0
	TotEmp <- 0
	Para J<-1 Hasta 4 Hacer
		TotSuc <- 0
		Para i<-1 Hasta 5 Hacer
			TotSuc <- TotSuc+(Cant[J,i]*Prec[i])
		FinPara
		Escribir 'Recaudaciones Sucursal ', J, ':', TotSuc
		Si TotSuc>MayorRec Entonces
			MayorRec <- TotSuc
			NumMayor <- J
		FinSi
		TotEmp <- TotEmp+TotSuc
	FinPara
	Escribir 'Recaudacion total de la empresa:', TotEmp
	Escribir 'Sucursal de Mayor Recaudacion:', NumMayor
FinAlgoritmo
