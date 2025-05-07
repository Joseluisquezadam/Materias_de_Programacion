#include <iostream>
#include <cstdlib>  // Para rand() y srand()
#include <ctime>    // Para time()
using namespace std;

int main() {
    char jugarDeNuevo;
    
    do {
        // Configuración inicial
        srand(time(0));  // Semilla para números aleatorios
        int numeroSecreto = rand() % 100 + 1;  // Número entre 1 y 100
        int intento;
        int intentosRealizados = 0;
        const int MAX_INTENTOS = 7;  // Límite de intentos
        bool adivinado = false;

        // Mensaje de bienvenida
        cout << "\n**** ADIVINA EL NUMERO (1-100) ****" << endl;
        cout << "Tienes " << MAX_INTENTOS << " intentos para adivinarlo." << endl << endl;

        // Bucle principal del juego
        while (!adivinado && intentosRealizados < MAX_INTENTOS) {
            cout << "Intento #" << intentosRealizados + 1 << ": ";
            
            // Validar que la entrada sea un número
            while (!(cin >> intento)) {
                cout << "¡Error! Ingresa un número válido: ";
                cin.clear();
                cin.ignore(10000, '\n');
            }
            
            intentosRealizados++;

            // Validar rango
            if (intento < 1 || intento > 100) {
                cout << "¡Debe ser un número entre 1 y 100!" << endl;
                intentosRealizados--;  // No contar este intento inválido
                continue;
            }

            // Comparar con el número secreto
            if (intento < numeroSecreto) {
                cout << "El número es MAYOR." << endl;
            } 
            else if (intento > numeroSecreto) {
                cout << "El número es MENOR." << endl;
            } 
            else {
                adivinado = true;
                cout << endl << "¡FELICIDADES! Adivinaste en " << intentosRealizados << " intentos." << endl;
            }

            // Mostrar intentos restantes
            if (!adivinado && intentosRealizados < MAX_INTENTOS) {
                cout << "Te quedan " << MAX_INTENTOS - intentosRealizados << " intentos." << endl;
            }
        }

        // Mensaje si se agotan los intentos
        if (!adivinado) {
            cout << endl << "¡PERDISTE! El número era: " << numeroSecreto << endl;
        }

        // Preguntar si quiere jugar otra vez
        cout << "\n¿Quieres jugar otra vez? (s/n): ";
        cin >> jugarDeNuevo;
        
        // Limpiar el buffer de entrada
        cin.ignore(10000, '\n');
        
    } while (jugarDeNuevo == 's' || jugarDeNuevo == 'S');

    cout << "\n¡Gracias por jugar! Hasta la próxima :)" << endl;
    return 0;
}