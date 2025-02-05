#include <iostream>

int main() {

    char op;
    double num1;
    double num2;
    double resultado;

    std::cout << "Ingrese la operacion deseada (+, -, *, /) ";
    std::cin >> op;

    std::cout << "Ingrese el primer numero: ";
    std::cin >> num1;

    std::cout << "Ingrese el segundo numero: ";
    std::cin >> num2;

    switch(op) {
        case '+':
            resultado = num1 + num2;
            std::cout << "El resultado es: " << resultado << std::endl;
            break;

        case '-':
            resultado = num1 - num2;
            std::cout << "El resultado es: " << resultado << std::endl;
            break;

        case '*':
            resultado = num1 * num2;
            std::cout << "El resultado es: " << resultado << std::endl;
            break;

        case '/':
            resultado = num1 / num2;
            std::cout << "El resultado es: " << resultado << std::endl;
            break;
        default
            std::cout << "Error\n";

    }


}
