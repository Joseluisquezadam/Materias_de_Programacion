#include <iostream>
#include <string>
#include <cctype>
using namespace std;

int main() {
    string frase;
    int mayusculas = 0, minusculas = 0, otros = 0;

    cout << "Ingrese una frase: ";
    getline(cin, frase);

    for (char c : frase) {
        if (isalpha(c)) { // Solo considera caracteres alfabéticos
            if (isupper(c)) {
                mayusculas++;
            } else {
                minusculas++;
            }
        } else {
            otros++; // Cuenta espacios, números, símbolos, etc.
        }
    }

    cout << "\nAnalisis de la frase:" << endl;
    cout << "---------------------" << endl;
    cout << "Letras mayusculas: " << mayusculas << endl;
    cout << "Letras minusculas: " << minusculas << endl;
    cout << "Otros caracteres: " << otros << endl;
    cout << "Longitud total: " << frase.length() << " caracteres" << endl;

    return 0;
}