#include <iostream>
#include <cstdlib>
#include <ctime>
#include <vector>
using namespace std;

const int NUM_VOTANTES = 50;
const int NUM_RONDAS = 5;
const int NUM_CANDIDATOS = 3;

// Funci�n para generar votos asegurando que sumen 50 en total por ronda
void generarVotos(vector<vector<int>> &votos) {
    for (int j = 0; j < NUM_RONDAS; j++) {
        int votos_restantes = NUM_VOTANTES;
        vector<int> ronda(NUM_CANDIDATOS, 0);

        // Asignamos votos aleatoriamente a los 3 candidatos sin exceder 50
        for (int i = 0; i < NUM_CANDIDATOS - 1; i++) {
            ronda[i] = rand() % (votos_restantes + 1);  // Genera votos sin superar los disponibles
            votos_restantes -= ronda[i];
        }
        ronda[NUM_CANDIDATOS - 1] = votos_restantes; // El �ltimo recibe lo que quede

        // Guardamos la ronda en la matriz
        for (int i = 0; i < NUM_CANDIDATOS; i++) {
            votos[i][j] = ronda[i];
        }
    }
}

// Funci�n para encontrar el ganador y el que menos votos tuvo
void calcularResultados(const vector<vector<int>> &votos, vector<string> &candidatos) {
    vector<int> votos_totales(NUM_CANDIDATOS, 0);

    // Sumar votos totales por candidato
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        for (int j = 0; j < NUM_RONDAS; j++) {
            votos_totales[i] += votos[i][j];
        }
    }

    // Determinar el ganador y el perdedor
    int indice_ganador = 0, indice_perdedor = 0;
    for (int i = 1; i < NUM_CANDIDATOS; i++) {
        if (votos_totales[i] > votos_totales[indice_ganador]) {
            indice_ganador = i;
        }
        if (votos_totales[i] < votos_totales[indice_perdedor]) {
            indice_perdedor = i;
        }
    }

    // Mostrar resultados
    cout << "Resultados finales:" << endl;
    cout << "El ganador es: " << candidatos[indice_ganador] << " con " << votos_totales[indice_ganador] << " votos." << endl;
    cout << "El candidato con menos votos es: " << candidatos[indice_perdedor] << " con " << votos_totales[indice_perdedor] << " votos." << endl;
}

// Funci�n para mostrar la tabla de votos
void mostrarTabla(const vector<vector<int>> &votos, vector<string> &candidatos) {
    cout << "\nTabla de Votaciones:" << endl;
    cout << "---------------------------------------------------" << endl;
    cout << "Candidato  | R1  | R2  | R3  | R4  | R5  | Total" << endl;
    cout << "---------------------------------------------------" << endl;

    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        int total = 0;
        cout << candidatos[i] << "  | ";
        for (int j = 0; j < NUM_RONDAS; j++) {
            cout << votos[i][j] << "  | ";
            total += votos[i][j];
        }
        cout << total << endl;
    }
}

int main() {
    srand(time(0)); // Semilla para n�meros aleatorios

    vector<string> candidatos(NUM_CANDIDATOS);
    vector<vector<int>> votos(NUM_CANDIDATOS, vector<int>(NUM_RONDAS));

    // Pedir nombres de los candidatos
    cout << "Ingrese los nombres de los " << NUM_CANDIDATOS << " candidatos:" << endl;
    for (int i = 0; i < NUM_CANDIDATOS; i++) {
        cout << "Candidato " << i + 1 << ": ";
        cin >> candidatos[i];
    }

    char opcion;
    do {
        generarVotos(votos); // Generar votos aleatorios asegurando que sumen 50 por ronda
        mostrarTabla(votos, candidatos); // Mostrar la tabla de votaciones
        calcularResultados(votos, candidatos); // Determinar ganador y perdedor

        // Preguntar si desea repetir
        cout << "\n�Desea realizar otra elecci�n? (S/N): ";
        cin >> opcion;
    } while (opcion == 'S' || opcion == 's');

    return 0;
}
