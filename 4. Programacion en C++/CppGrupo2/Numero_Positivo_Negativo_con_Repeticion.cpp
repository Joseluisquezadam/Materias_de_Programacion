#include <iostream>
using namespace std;

int main() {
    float numero;
    
    cout << "Identificador de numeros positivos y negativos" << endl;
    cout << "---------------------------------------------" << endl;

    while (true) {
        cout << "Ingrese un numero (0 para salir): ";
        
        // Validar que realmente se ingrese un número
        if (!(cin >> numero)) {
            cout << "Error: Por favor ingrese un valor numerico." << endl;
            cin.clear();
            cin.ignore(10000, '\n');
            continue;
        }

        if (numero > 0) {
            cout << "POSITIVO" << endl;
        } 
        else if (numero < 0) {
            cout << "NEGATIVO" << endl;
        }
        else {
            cout << "Saliendo..." << endl;
            break;
        }
    }

    return 0;
}