Algoritmo  Calculadora
    Definir opcion Como Entero
    Definir n1, n2, resultado Como Real
    
    Escribir "CALCULADORA"
    Escribir "1. Sumar"
    Escribir "2. Restar"
    Escribir "3. Multiplicar"
    Escribir "4. Dividir"
    Escribir "Elige una opción (1-4):"
    Leer opcion
    
    Escribir "Ingresa primer número: "
    Leer n1
    Escribir "Ingresa segundo número: "
    Leer n2
    
    Si opcion = 1 Entonces
        resultado <- n1 + n2
        Escribir "Resultado: ", resultado
    FinSi
    
    Si opcion = 2 Entonces
        resultado <- n1 - n2
        Escribir "Resultado: ", resultado
    FinSi
    
    Si opcion = 3 Entonces
        resultado <- n1 * n2
        Escribir "Resultado: ", resultado
    FinSi
    
    Si opcion = 4 Entonces
        Si n2 <> 0 Entonces
            resultado <- n1 / n2
            Escribir "Resultado: ", resultado
        Sino
            Escribir "No se puede dividir entre 0"
        FinSi
    FinSi
FinAlgoritmo