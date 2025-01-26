// Recursor: Emilio Jose Reyes Aragón
// funcion que no recibe ni devuelve nada
Función Saludar
	Escribir 'Hola mundo!'
FinFunción

// funcion que recibe un argumento por valor, y devuelve su doble
Función res <- CalcularDoble(num)
	res <- num*2
FinFunción // retorna el doble

// funcion que recibe un argumento por referencia, y lo modifica
Función Triplicar(num por referencia)
	num <- num*3
FinFunción // modifica la variable duplicando su valor

// proceso principal, que invoca a las funciones antes declaradas
Algoritmo PruebaFunciones
	Escribir 'Llamada a la funcion Saludar:'
	Saludar()
	Escribir 'Ingrese un valor numérico para x:' // como no recibe argumentos pueden omitirse los paréntesis vacios
	Leer x
	Escribir 'Llamada a la función CalcularDoble (pasaje por valor)'
	Escribir 'El doble de ', x, ' es ', CalcularDoble(x)
	Escribir 'El valor original de x es ', x
	Escribir 'Llamada a la función Triplicar (pasaje por referencia)'
	Triplicar(x)
	Escribir 'El nuevo valor de x es ', x
FinAlgoritmo
