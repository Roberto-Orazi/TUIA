"""" 
. Escriba los siguientes programas. Nota: No utilice los metodos index, min, max, reverse.
a. Dada una lista de números list y un número n, determine en qué índice de la lista list se
encuentra el número n. En caso de no encontrarlo, el programa mostrará -1. Ejemplos
list = [11 ,25 ,3 , -4 ,95]
n = 3
# El programa deber ía mostrar
2

"""
list = [11 ,25 ,3 , -4 ,95]
n = 3
c = n in list
if c == True:
    print(list.index(n))
else:
    print("-1")
""""
list = [1 ,2 ,3 ,4 ,5]
n = 10
# El programa deber ía mostrar
-1
"""
list = [1 ,2 ,3 ,4 ,5]
n = 10
c = n in list
if c == True:
    print(list.index(n))
else:
    print("-1")


""""
b. Dada una lista de números, calcule el mínimo y el máximo de la lista. Nota: es posible hacerlo
recorriendo una única vez la lista o recorriéndola dos veces. Piense las ventajas y desventajas de
ambos métodos.
numeros = [11 ,25 ,3 , -4 ,95]
# El programa deber ía mostrar
El m í nimo es -4
El m á ximo es 95
"""
numeros = [11 ,25 ,3 , -4 ,95]
numeromin = 0
numeromax = 0
for i in range(len(numeros)):
    if numeros[i] == 0:
        numeromin = numeros[i]
        numeromax = numeros[i]
    elif numeros[i] != 0:
        if numeros[i] < numeromin:
            numeromin = numeros[i]
        elif numeros[i] > numeromax :
            numeromax = numeros[i]
print("El minimo es ",numeromin)
print("El maximo es: ",numeromax)

"""
c. Dada una lista de números, cree una nueva lista sumando 1 a cada elemento.
numeros = [0 ,1 ,2 ,3 ,4]
# El programa deber ía mostrar
[1 ,2 ,3 ,4 ,5]

"""
numeros = [0, 1, 2, 3, 4]
nueva_lista = [numero + 1 for numero in numeros]
print(nueva_lista)

"""
d. Dada una lista palabras de cadenas de texto, devuelva una nueva lista formada sólo por las
cadenas de palabras que empiezan con "a".

palabras = [" arbol ", " barco ", " artificial ", " casa ", " dado ", "a"]
# El programa deber ía mostrar
[" arbol ", " artificial ", "a"]
"""

palabras = ["arbol", "barco", "artificial", "casa", "dado ", "a"]
nueva_lista = []
for letra in palabras:
    for i in range(len(letra)):
        if i[0] == "a":
            nueva_lista.append(letra)
print(nueva_lista)