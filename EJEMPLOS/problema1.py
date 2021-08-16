#Limpio consola
from os import system
system ("cls")

#creo variable sueldo con el dato que ingrese
sueldos = []
for x in range (3):
    mensualidad=float(input("Ingrese su sueldo mensual :"))
    sueldos.append(mensualidad)
 #imprimo la lista desordenada
print ("listas del que menos gana , al que mas gana")
print (sueldos)
#Aca organizo las listas con un  IF y imprimo :)
for x in range (3):
    if sueldos[x]>sueldos[x+1]:
      # acomodar=sueldos[x]
       sueldos[x]=sueldos[x+1]
       sueldos[x+1]=acomodar
    print ("lista ordenada de menos a mas")
    print (sueldos)
