Algoritmo SumaVector
    // Declaraci�n correcta de variables
    Dimension vector[5]
    Definir vector como entero  // Sin corchetes aqu�
    Definir i como entero
    Definir suma como entero
    
    // Inicializaci�n
    suma <- 0
    
    // Ingreso de datos (�ndices 1-5)
    Escribir "Ingrese 5 n�meros enteros:"
    Para i <- 1 Hasta 5 Hacer
        Escribir "Elemento ", i, ": "
        Leer vector[i]
    FinPara
    
    // C�lculo de la suma
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + vector[i]
    FinPara
    
    // Resultado
    Escribir "La suma de los elementos es: ", suma
FinAlgoritmo