Algoritmo MultiplicarVectorPorEscalar
    // Primero dimensionamos el vector
    Dimension vector[4]
    
    // Luego definimos las variables
    Definir vector como entero  // Sin corchetes aqu�
    Definir escalar como entero
    Definir i como entero
    
    // Ingresamos los datos del vector
    Escribir "Ingrese los 4 elementos del vector:"
    Para i <- 1 Hasta 4 Hacer
        Escribir "Elemento ", i, ": "
        Leer vector[i]
    FinPara
    
    // Solicitamos el escalar
    Escribir "Ingrese el valor del escalar:"
    Leer escalar
    
    // Mostramos resultados de la multiplicaci�n
    Escribir "Resultados de la multiplicaci�n:"
    Para i <- 1 Hasta 4 Hacer
        Escribir vector[i], " � ", escalar, " = ", vector[i] * escalar
    FinPara
FinAlgoritmo