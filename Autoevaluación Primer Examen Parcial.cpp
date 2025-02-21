//Emilio Jose Reyes Aragón 21/02/2024
/*Se le solicita un programa que utilizando arreglos y funciones ingrese los resultados de 6 equipos de football
jugando entre ellos (ida y vuelta), muestre los resultados en juegos jugados, juegos ganados, juegos empatados,
juegos perdidos.  Calcule las puntos finales y calcule en otro arreglo los porcentajes respectivos de cada equipo.
Entregables:  Link folder repositorio en Github personal, imagen de la ejecuciòn.*/

//Resultados de equipos de football

#include <iostream>
#include <iomanip>

using namespace std;

const int NUM_EQUIPOS = 6;
const int NUM_PARTIDOS = 2 * (NUM_EQUIPOS * (NUM_EQUIPOS - 1)) / 2;

struct Equipo {
    string nombre;
    int jugados = 0;
    int ganados = 0;
    int empatados = 0;
    int perdidos = 0;
    int puntos = 0;
    float porcentaje = 0.0;
};

void ingresarResultados(Equipo equipos[], int resultados[][NUM_EQUIPOS]) {
    for (int i = 0; i < NUM_EQUIPOS; ++i) {
        for (int j = 0; j < NUM_EQUIPOS; ++j) {
            if (i != j) {
                cout << "Ingrese el resultado del partido entre " << equipos[i].nombre << " y " << equipos[j].nombre << " (1: gana " << equipos[i].nombre << ", 2: empate, 3: gana " << equipos[j].nombre << "): ";
                cin >> resultados[i][j];
                equipos[i].jugados++;
                equipos[j].jugados++;
                if (resultados[i][j] == 1) {
                    equipos[i].ganados++;
                    equipos[j].perdidos++;
                    equipos[i].puntos += 3;
                } else if (resultados[i][j] == 2) {
                    equipos[i].empatados++;
                    equipos[j].empatados++;
                    equipos[i].puntos += 1;
                    equipos[j].puntos += 1;
                } else if (resultados[i][j] == 3) {
                    equipos[j].ganados++;
                    equipos[i].perdidos++;
                    equipos[j].puntos += 3;
                }
            }
        }
    }
}

void calcularPorcentajes(Equipo equipos[]) {
    for (int i = 0; i < NUM_EQUIPOS; ++i) {
        equipos[i].porcentaje = (equipos[i].puntos / static_cast<float>(equipos[i].jugados * 3)) * 100;
    }
}

void mostrarResultados(Equipo equipos[]) {
    cout << setw(10) << "Equipo" << setw(10) << "Jugados" << setw(10) << "Ganados" << setw(10) << "Empatados" << setw(10) << "Perdidos" << setw(10) << "Puntos" << setw(15) << "Porcentaje" << endl;
    for (int i = 0; i < NUM_EQUIPOS; ++i) {
        cout << setw(10) << equipos[i].nombre << setw(10) << equipos[i].jugados << setw(10) << equipos[i].ganados << setw(10) << equipos[i].empatados << setw(10) << equipos[i].perdidos << setw(10) << equipos[i].puntos << setw(14) << fixed << setprecision(2) << equipos[i].porcentaje << "%" << endl;
    }
}

int main() {
    Equipo equipos[NUM_EQUIPOS] = {{"Equipo 1"}, {"Equipo 2"}, {"Equipo 3"}, {"Equipo 4"}, {"Equipo 5"}, {"Equipo 6"}};
    int resultados[NUM_EQUIPOS][NUM_EQUIPOS] = {0};

    ingresarResultados(equipos, resultados);
    calcularPorcentajes(equipos);
    mostrarResultados(equipos);

    return 0;
}
