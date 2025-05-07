#include <iostream>
#include <iomanip>
#include <locale> // Para configurar la codificación
using namespace std;

int main() {
    // Configurar la codificación para caracteres especiales
    setlocale(LC_ALL, "spanish");
    
    const float TASA_DOP = 56.45f;    // 1 USD = 56.45 DOP
    const float TASA_EUROS = 0.85f;   // 1 USD = 0.85 EUR
    const float TASA_YENES = 110.5f;  // 1 USD = 110.5 JPY
    
    float dolares, cantidadConvertida;
    int opcion;
    char repetir;
    
    do {
        cout << "\n=== CONVERTIDOR DE DIVISAS ===" << endl;
        cout << "1. Dolares a Pesos Dominicanos (DOP)" << endl;
        cout << "2. Dolares a Euros (EUR)" << endl;
        cout << "3. Dolares a Yenes Japoneses (JPY)" << endl;
        cout << "4. Salir" << endl;
        cout << "Elija una opcion (1-4): ";
        cin >> opcion;
        
        if (opcion >= 1 && opcion <= 3) {
            cout << "Ingrese la cantidad en dolares: $";
            cin >> dolares;
            
            switch (opcion) {
                case 1:
                    cantidadConvertida = dolares * TASA_DOP;
                    cout << fixed << setprecision(2);
                    cout << "$" << dolares << " USD = $" << cantidadConvertida << " DOP" << endl;
                    break;
                case 2:
                    cantidadConvertida = dolares * TASA_EUROS;
                    cout << fixed << setprecision(2);
                    cout << "$" << dolares << " USD = €" << cantidadConvertida << " EUR" << endl;
                    break;
                case 3:
                    cantidadConvertida = dolares * TASA_YENES;
                    cout << fixed << setprecision(2);
                    cout << "$" << dolares << " USD = ¥" << cantidadConvertida << " JPY" << endl;
                    break;
            }
        } else if (opcion != 4) {
            cout << "Opción inválida. Intente nuevamente." << endl;
        }
        
        if (opcion != 4) {
            cout << "\n¿Desea realizar otra conversion? (s/n): ";
            cin >> repetir;
        }
    } while ((repetir == 's' || repetir == 'S') && opcion != 4);
    
    cout << "\n¡Gracias por usar el convertidor!" << endl;
    return 0;
}