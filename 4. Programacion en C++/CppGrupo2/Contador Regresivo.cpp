#include <iostream>
using namespace std;

int main() {
    int numero;
    
    // Pedir al usuario que ingrese un número
    cout << "Ingrese un numero para la cuenta regresiva: ";
    cin >> numero;
    
    // Validar que el número sea positivo
    if (numero < 0) {
        cout << "Por favor ingrese un numero positivo." << endl;
        return 1; // Salir del programa con código de error
    }
    
    // Mostrar la cuenta regresiva
    cout << "Iniciando cuenta regresiva..." << endl;
    for (int i = numero; i >= 0; i--) {
        cout << i << endl;
    }
    
    cout << "¡Cuenta regresiva completada!" << endl;
    
    return 0;
}