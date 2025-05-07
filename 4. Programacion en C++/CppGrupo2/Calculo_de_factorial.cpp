#include <iostream>
using namespace std;

int main() {
    int numero;
    long long factorial = 1;

    cout << "CALCULADORA DE FACTORIAL" << endl;
    cout << "-----------------------" << endl;
    
    do {
        cout << "Ingrese un numero entre 0 y 20 (mayores pueden desbordar): ";
        cin >> numero;
        
        if (numero < 0) {
            cout << "Error: No existe factorial de numeros negativos." << endl;
        } 
        else if (numero > 20) {
            cout << "Advertencia: Factoriales mayores a 20 pueden desbordar la variable." << endl;
        }
    } while (numero < 0 || numero > 20);

    // Calcular factorial
    for (int i = 1; i <= numero; ++i) {
        factorial *= i;
    }

    cout << "\nResultado:" << endl;
    cout << numero << "! = " << factorial << endl;

    return 0;
}