Algoritmo SumaVector
    // Primero dimensionamos el vector
    Dimension vector[5]
    
    // Luego definimos las variables
    Definir vector como entero  // Sin corchetes aquí
    Definir i como entero
    Definir suma como entero
    
    // Inicializamos la suma
    suma <- 0
    
    // Ingresamos los datos
    Escribir "Ingrese 5 números enteros:"
    Para i <- 1 Hasta 5 Hacer
        Escribir "Elemento ", i, ": "
        Leer vector[i]
    FinPara
    
    // Calculamos la suma
    Para i <- 1 Hasta 5 Hacer
        suma <- suma + vector[i]
    FinPara
    
    // Mostramos el resultado
    Escribir "La suma de los elementos es: ", suma
FinAlgoritmo