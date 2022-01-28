from os import system
system ("cls")
#funciones
#def saludar():
#   print ("hola cyberninjas")
#saludar()

def iva(valor):
    r_iva=valor*19/100
    return(r_iva)

def subto(x,y):
    return(x-y)


valor_compra=100.000
print("############################")
print(" compra  ")
print("Valor Total: ",valor_compra)
iva_compra=iva(valor_compra)
print('Iva: ',iva_compra)
sub_total=subto(valor_compra,iva_compra)
print('SubTotal: ',sub_total)