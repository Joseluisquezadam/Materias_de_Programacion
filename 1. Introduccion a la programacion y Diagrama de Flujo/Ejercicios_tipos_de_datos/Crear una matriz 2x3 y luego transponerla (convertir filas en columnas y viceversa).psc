Algoritmo PromedioMatriz2x2
    // Primero dimensionamos las matrices
    Dimension matriz[2,2]
    
    // Luego definimos las variables
    Definir matriz como real  // Sin corchetes aquí
    Definir i, j como entero
    Definir suma, promedio como real
    
    // Inicializamos la suma
    suma <- 0
    
    // Ingresamos los datos de la matriz
    Escribir "Ingrese los 4 elementos de la matriz 2x2:"
    Para i <- 1 Hasta 2 Hacer
        Para j <- 1 Hasta 2 Hacer
            Escribir "Elemento [", i, ",", j, "]: "
            Leer matriz[i,j]
            suma <- suma + matriz[i,j]
        FinPara
    FinPara
    
    // Calculamos el promedio
    promedio <- suma / 4
    
    // Mostramos la matriz y el resultado
    Escribir ""
    Escribir "Matriz ingresada:"
    Para i <- 1 Hasta 2 Hacer
        Escribir "[", matriz[i,1], " ", matriz[i,2], "]"
    FinPara
    
    Escribir ""
    Escribir "Suma total de elementos: ", suma
    Escribir "Promedio de los elementos: ", promedio
FinAlgoritmo