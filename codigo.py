def suma(a, b):
    resp = a+b
    return resp

def resta(a, b):
    resp = a-b
    return resp

def multiplicacion(a, b):
    resp = a*b
    return resp

def division(a, b):
    if b>0:
        resp = a/b
    else:
        resp = "No se puede dividir"
    return resp

def main():
    num1Str = input("Ingresa el primer numero: ")
    num2Str = input("Ingresa el segundo numero: ")

    num1 = int(num1Str)
    num2 = int(num2Str)
    sumaresp = suma(num1, num2)
    restaresp = resta(num1, num2)
    multiplicacionresp = multiplicacion(num1, num2)
    divisionresp = division(num1, num2)

    print("La suma es:", sumaresp)
    print("La resta es:", restaresp)
    print("La multiplicacion es:", multiplicacionresp)
    print("La division es:", divisionresp)

if __name__ == "__main__":
    main()