Algoritmo VerificarVocal
    Definir letra Como Caracter
    
    Escribir "Ingrese un car�cter:"
    Leer letra
    
    // Convertir a min�scula para simplificar la comparaci�n
    letra <- Minusculas(letra)
    
    Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
        Escribir "�Es una vocal!"
    Sino
        Escribir "No es una vocal."
    FinSi
FinAlgoritmo