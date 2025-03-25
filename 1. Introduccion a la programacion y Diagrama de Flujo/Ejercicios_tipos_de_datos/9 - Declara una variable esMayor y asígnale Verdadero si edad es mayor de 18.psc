Algoritmo VerificarMayoriaEdad
    Definir edad Como Entero
    Definir esMayor Como Logico
    
    Escribir "Ingrese la edad:"
    Leer edad
    
    esMayor <- edad > 18
    
    Si esMayor Entonces
        Escribir "La persona es mayor de edad."
    Sino
        Escribir "La persona no es mayor de edad."
    FinSi
FinAlgoritmo