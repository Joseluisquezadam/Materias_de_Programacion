#include <iostream>
#include <limits> // Para limpiar el buffer de entrada
using namespace std;

int main() {
    float num1, num2, resultado;
    char operacion;
    bool continuar = true;

    cout << "CALCULADORA BASICA" << endl;
    cout << "-----------------" << endl;

    do {
        // Ingreso de datos
        cout << "\nIngrese el primer numero: ";
        while (!(cin >> num1)) {
            cout << "Entrada invalida. Ingrese un numero: ";
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
        }

        cout << "Ingrese el segundo numero: ";
        while (!(cin >> num2)) {
            cout << "Entrada invalida. Ingrese un numero: ";
            cin.clear();
            cin.ignore(numeric_limits<streamsize>::max(), '\n');
        }

        // Menú de operaciones
        cout << "\nSeleccione la operacion:" << endl;
        cout << "+ : Suma" << endl;
        cout << "- : Resta" << endl;
        cout << "* : Multiplicacion" << endl;
        cout << "/ : Division" << endl;
        cout << "s : Salir" << endl;
        cout << "Opcion: ";
        cin >> operacion;

        // Realizar operación seleccionada
        switch (operacion) {
            case '+':
                resultado = num1 + num2;
                cout << "\nResultado: " << num1 << " + " << num2 << " = " << resultado << endl;
                break;
            case '-':
                resultado = num1 - num2;
                cout << "\nResultado: " << num1 << " - " << num2 << " = " << resultado << endl;
                break;
            case '*':
                resultado = num1 * num2;
                cout << "\nResultado: " << num1 << " * " << num2 << " = " << resultado << endl;
                break;
            case '/':
                if (num2 != 0) {
                    resultado = num1 / num2;
                    cout << "\nResultado: " << num1 << " / " << num2 << " = " << resultado << endl;
                } else {
                    cout << "\nError: No se puede dividir por cero." << endl;
                }
                break;
            case 's':
            case 'S':
                continuar = false;
                break;
            default:
                cout << "\nOperacion no valida. Intente nuevamente." << endl;
        }

        if (continuar) {
            cout << "\n----------------------------------" << endl;
            cout << "¿Desea realizar otra operacion? (s/n): ";
            char otra;
            cin >> otra;
            continuar = (otra == 's' || otra == 'S');
        }

    } while (continuar);

    cout << "\n¡Gracias por usar la calculadora!" << endl;
    return 0;
}