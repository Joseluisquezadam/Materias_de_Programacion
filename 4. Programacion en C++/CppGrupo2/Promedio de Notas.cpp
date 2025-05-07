#include <iostream>
#include <iomanip> // Para setprecision
using namespace std;

int main() {
    const int CANTIDAD_NOTAS = 5;
    float nota, suma = 0, promedio;
    
    cout << "Calculadora de promedio de " << CANTIDAD_NOTAS << " notas" << endl;
    cout << "----------------------------------" << endl;

    // Pedir las 5 notas usando un bucle for
    for (int i = 0; i < CANTIDAD_NOTAS; i++) {
        cout << "Ingrese la nota " << (i + 1) << ": ";
        cin >> nota;
        
        // Validar que la nota esté entre 0 y 20 (opcional)
        while (nota < 0 || nota > 20) {
            cout << "Nota inválida. Debe estar entre 0 y 20. Intente nuevamente: ";
            cin >> nota;
        }
        
        suma += nota; // Acumular la suma de notas
    }

    // Calcular el promedio
    promedio = suma / CANTIDAD_NOTAS;

    // Mostrar resultados con 2 decimales
    cout << fixed << setprecision(2);
    cout << "\nEl promedio de las " << CANTIDAD_NOTAS << " notas es: " << promedio << endl;

    // Clasificación adicional (opcional)
    if (promedio >= 18) {
        cout << "Excelente rendimiento!" << endl;
    } else if (promedio >= 14) {
        cout << "Buen rendimiento." << endl;
    } else if (promedio >= 11) {
        cout << "Rendimiento regular." << endl;
    } else {
        cout << "Necesita mejorar." << endl;
    }

    return 0;
}