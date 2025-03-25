Algoritmo SumaVector
    // Declaración correcta de variables
    Dimension vector[5]
    Definir vector como entero  // Sin corchetes aquí
    Definir i como entero
    Definir suma como entero
    
    // Inicialización
    suma <- 0
    
    // Ingreso de datos (índices 1-5)
    Escribir "Ingrese 5 números enteros:"
    Para i <- 1 Hasta 5 Hacer
        Escribir "Elemento ", i, ": "
        Leer vector[i]
    FinPara
    
    // Cálculo de la suma
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + vector[i]
    FinPara
    
    // Resultado
    Escribir "La suma de los elementos es: ", suma
FinAlgoritmo