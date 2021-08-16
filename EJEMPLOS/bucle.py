contador = 0 
sueldos=[]
for x in range(5):
valor=int(input("Ingrese sueldo:"))
sueldos.append(valor)

print("Lista sin ordenar")
print(sueldos)

for x in range(4):
if sueldos[x]>sueldos[x+1]:
aux=sueldos[x]
sueldos[x]=sueldos[x+1]
sueldos[x+1]=aux

TUTORIAL PYTHON

print("Lista con el último elemento ordenado")
print(sueldos)