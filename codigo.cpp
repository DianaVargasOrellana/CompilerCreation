#include <iostream>
using namespace std;
int suma(int a, int b){
 int resp = a+b;
 return resp;
}

int resta(int a, int b){
 int resp = a-b;
 return resp;
}

int multiplicacion(int a, int b){
 int resp = a*b;
 return resp;
}

int division(int a, int b){
 int resp;
 if(b>0){
   resp = a/b;
 } else {
   resp = 0;
   cout <<"No se puede dividir"<< endl ;
 }
return resp;
}

int main() {
   string num1Str;
   cout << "Ingresa el primer numero: "; 
   cin >> num1Str;
   string num2Str;
   cout << "Ingresa el segundo numero: "; 
   cin >> num2Str;
   int num1 = stoi(num1Str);
   int num2 = stoi(num2Str);
   int sumaresp = suma(num1, num2);
   int restaresp = resta(num1, num2);
   int multiplicacionresp = multiplicacion(num1, num2);
   int divisionresp = division(num1, num2);
   cout << "La suma es:" << sumaresp<< endl ;
   cout << "La resta es:" << restaresp<< endl ;
   cout << "La multiplicacion es:" << multiplicacionresp<< endl ;
   cout << "La division es:" << divisionresp<< endl ;
}