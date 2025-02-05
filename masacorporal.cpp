#include <iostream>
#include <cstdlib>
//Este programa ayuda a calcular el peso y la altura del usuario y muestre el indice de masa
// Febrero 2025 Emilio Reyes
using namespace std;

int main() {
    float operadorUno = 0, operadorDos = 0, resultado;
    int opcionSeleccionada, opcionPeso;
    char salidaMenu;

    do {
        system("cls");
        cout << "BMI" << endl;
        cout << "1. Peso en kilogramos" << endl;
        cout << "2. Peso en libras" << endl;
        cout << "   Opcion: ";
        cin >> opcionSeleccionada;

        opcionPeso = opcionSeleccionada;

        if (opcionPeso < 1 || opcionPeso > 2) {
            cout << "Error: Opción inválida" << endl;
            system("pause");
            continue;
        }

        cout << "Ingrese Operador 1 (peso): ";
        cin >> operadorUno;

        cout << "3. Altura en metros" << endl;
        cout << "4. Altura en pulgadas" << endl;
        cout << "   Opcion: ";
        cin >> opcionSeleccionada;

        if (opcionSeleccionada < 3 || opcionSeleccionada > 4) {
            cout << "Error: Opción inválida" << endl;
            system("pause");
            continue;
        }

        cout << "Ingrese Operador 2 (altura): ";
        cin >> operadorDos;

        int combinacion = opcionPeso * 10 + (opcionSeleccionada % 10);
        string categoria;

        switch (combinacion) {
            case 13: // kg + metros
                resultado = operadorUno / (operadorDos * operadorDos);
                break;
            case 24: // libras + pulgadas
                resultado = (operadorUno * 703) / (operadorDos * operadorDos);
                break;
            default:
                cout << "Error: Combinación inválida de unidades" << endl;
                resultado = 0;
        }

        // Clasificación del BMI solo si el resultado es válido
        if (resultado > 0) {
            if (resultado < 18.5) categoria = "Bajo peso";
            else if (resultado < 25) categoria = "Normal";
            else if (resultado < 30) categoria = "Sobrepeso";
            else categoria = "Obeso";

            cout << "El resultado de su calculo es: " << resultado
                 << " (" << categoria << ")" << endl;
        }
        else {
            cout << "El resultado de su calculo es: " << resultado << endl;
        }

        cout << "Desea realizar otra operacion (S/N): ";
        cin >> salidaMenu;
    } while (salidaMenu == 'S' || salidaMenu == 's');

    return 0;
}
