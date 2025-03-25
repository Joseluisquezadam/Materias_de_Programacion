Algoritmo VerificarVocal
    Definir letra Como Caracter
    
    Escribir "Ingrese un carácter:"
    Leer letra
    
    // Convertir a minúscula para simplificar la comparación
    letra <- Minusculas(letra)
    
    Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
        Escribir "¡Es una vocal!"
    Sino
        Escribir "No es una vocal."
    FinSi
FinAlgoritmo