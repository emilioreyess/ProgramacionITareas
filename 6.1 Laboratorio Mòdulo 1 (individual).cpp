#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>

using namespace std;

const int NUM_VOTANTES = 50;
const int NUM_RONDAS = 5;
const int NUM_CANDIDATOS = 3;

// Función para generar votos aleatorios
void generarVotos(int votos[NUM_CANDIDATOS][NUM_RONDAS]) {
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        for (int j = 0; j < NUM_RONDAS; j++) {
            votos[i][j] = rand() % (NUM_VOTANTES + 1);
        }
    }
}

// Función para mostrar la tabla de resultados
void mostrarResultados(const string candidatos[], int votos[NUM_CANDIDATOS][NUM_RONDAS]) {
    cout << "\nResultados de las votaciones:\n";
    cout << "-------------------------------------\n";
    cout << "Candidato\t";
    for (int j = 0; j < NUM_RONDAS; j++) {
        cout << "Ronda " << j + 1 << "\t";
    }
    cout << "Total\n";

    int votosTotales[NUM_CANDIDATOS] = {0};
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        cout << candidatos[i] << "\t";
        for (int j = 0; j < NUM_RONDAS; j++) {
            cout << votos[i][j] << "\t";
            votosTotales[i] += votos[i][j];
        }
        cout << votosTotales[i] << endl;
    }
}

// Función para determinar el ganador y el que menos votos obtuvo
void determinarResultados(const string candidatos[], int votos[NUM_CANDIDATOS][NUM_RONDAS]) {
    int votosTotales[NUM_CANDIDATOS] = {0};

    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        for (int j = 0; j < NUM_RONDAS; j++) {
            votosTotales[i] += votos[i][j];
        }
    }

    int indiceGanador = 0, indicePerdedor = 0;
    for (int i = 1; i < NUM_CANDIDATOS; i++) {
        if (votosTotales[i] > votosTotales[indiceGanador]) {
            indiceGanador = i;
        }
        if (votosTotales[i] < votosTotales[indicePerdedor]) {
            indicePerdedor = i;
        }
    }

    cout << "\nGanador: " << candidatos[indiceGanador] << " con " << votosTotales[indiceGanador] << " votos.\n";
    cout << "Candidato con menos votos: " << candidatos[indicePerdedor] << " con " << votosTotales[indicePerdedor] << " votos.\n";
}

int main() {
    srand(time(0));

    string candidatos[NUM_CANDIDATOS];
    int votos[NUM_CANDIDATOS][NUM_RONDAS];

    cout << "Ingrese los nombres de los candidatos:\n";
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        cout << "Candidato " << i + 1 << ": ";
        cin >> candidatos[i];
    }

    char opcion;
    do {
        generarVotos(votos);
        mostrarResultados(candidatos, votos);
        determinarResultados(candidatos, votos);

        cout << "\n Desea realizar otra eleccion? (s/n): ";
        cin >> opcion;
    } while (opcion == 's' || opcion == 'S');

    return 0;
}
