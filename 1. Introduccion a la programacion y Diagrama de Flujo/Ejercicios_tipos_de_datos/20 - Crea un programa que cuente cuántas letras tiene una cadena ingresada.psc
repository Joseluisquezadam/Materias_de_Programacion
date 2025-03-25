Algoritmo ContarLetras
    Definir cadena Como Cadena
    Definir contador, i Como Entero
    
    Escribir "Ingrese una palabra o frase:"
    Leer cadena
    
    contador <- 0
    
    Para i <- 1 Hasta Longitud(cadena) Hacer
        Si Subcadena(cadena, i, i) <> " " Entonces
            contador <- contador + 1
        FinSi
    FinPara
    
    Escribir "La cadena tiene ", contador, " letras (sin contar espacios)"
FinAlgoritmo