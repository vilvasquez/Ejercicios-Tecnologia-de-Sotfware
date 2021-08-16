#Mostrar un menú con tres 
#opciones: 1- comenzar programa, 
#2- imprimir listado, 3-finalizar
 ##el usuario debe pode
#r seleccionar una opción #
#(1, 2 ó 3). Si elige una opción 
#incorrecta, informarle del error. 
#El menú se debe volver a mostrar
# luego de ejecutada cada opción,
 # permitiendo volver a elegir.
  # Si elige las opciones 1 ó 2 
   #elige la opción 3, se 
    #interrumpirá la impresión
     #del menú y el programa
 #finalizará.

from os import system
system ("cls")
print ("*******+MENSAJE DE BIENVENIDA ******")
num = 0
def contador(num):
    print ("hola",num + 144)
    num=num+1
   # return num 
contador (num)