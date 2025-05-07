#include <iostream>
using namespace std;

int main() {
    int contador = 0;
    
    cout << "Multiplos de 3 entre 1 y 100:" << endl;
    cout << "-----------------------------" << endl;
    
    for (int i = 1; i <= 100; i++) {
        if (i % 3 == 0) {
            cout << i;
            
            // Formato para separar los números
            if (i < 99) {
                cout << ", ";
            }
            
            contador++;
            
            // Salto de línea cada 10 números
            if (contador % 10 == 0) {
                cout << endl;
            }
        }
    }
    
    cout << endl << endl << "Total encontrados: " << contador << endl;
    return 0;
}