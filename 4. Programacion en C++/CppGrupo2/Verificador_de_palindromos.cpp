#include <iostream>
#include <string>
#include <algorithm> // Para transform
#include <cctype>    // Para tolower
using namespace std;

bool esPalindromo(string palabra) {
    // Convertir a minúsculas y eliminar espacios (para frases)
    palabra.erase(remove_if(palabra.begin(), palabra.end(), ::isspace), palabra.end());
    transform(palabra.begin(), palabra.end(), palabra.begin(), ::tolower);
    
    int izquierda = 0;
    int derecha = palabra.length() - 1;
    
    while (izquierda < derecha) {
        if (palabra[izquierda] != palabra[derecha]) {
            return false;
        }
        izquierda++;
        derecha--;
    }
    return true;
}

int main() {
    string entrada;
    
    cout << "VERIFICADOR DE PALINDROMOS" << endl;
    cout << "--------------------------" << endl;
    cout << "Ingrese una palabra o frase: ";
    getline(cin, entrada);
    
    if (esPalindromo(entrada)) {
        cout << "\"" << entrada << "\" ES un palindromo." << endl;
    } else {
        cout << "\"" << entrada << "\" NO es un palindromo." << endl;
    }
    
    return 0;
}