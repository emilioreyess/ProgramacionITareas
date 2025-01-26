// Recursor: Emilio Jose Reyes Aragón
// Separa un numero entero en sus digitos
Algoritmo Digitos
	Escribir 'Ingrese un numero entero postivo:'
	Leer n
	// primero, contar cuantos digitos
	cont <- 0
	aux <- n
	Mientras aux>0 Hacer
		cont <- cont+1 // mientras no sea cero
		aux <- trunc(aux/10) // contar cuantos digitos
	FinMientras // dividir por 10 y despreciar los de
	Escribir 'El numero tiene ', cont, ' digitos'
	// luego, mostrarlos uno por uno 
	aux <- n
	Para i<-1 Hasta cont Hacer
		pot <- 10^(cont-i)
		digito <- trunc(aux/pot) // por cuanto hay que dividir para obtener el primer digito
		aux <- aux-digito*pot // obtener el digito
		Escribir 'El digito ', i, ' es ', digito // quitar ese digito al numero
	FinPara
FinAlgoritmo
