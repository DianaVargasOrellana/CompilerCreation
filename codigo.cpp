int suma(a,b){
 int resp = a+b
 return resp;
}

int resta(a,b){
 int resp = a-b
 return resp;
}

int multiplicacion(a,b){
 int resp = a*b
 return resp;
}

int division(a,b){
 int resp;
 if(b>0){
   resp = a/b
 } else {
   resp = 0
   cout <<"No se puede dividir"<< endl ;
 }
return resp
}

int mian() {
   num1Str = cout <<"Ingresa el primer numero: ";
   num2Str = cout <<"Ingresa el segundo numero: ";
   num1 = stoi (num1Str);
   num2 = stoi (num2Str);
   sumaresp = suma(num1,num2);
   restaresp = resta(num1,num2);
   multiplicacionresp = multiplicacion(num1,num2);
   divisionresp = division(num1,num2);
   cout << "La suma es:" << sumaresp<< endl ;
   cout << "La resta es:" << restaresp<< endl ;
   cout << "La multiplicacion es:" << multiplicacionresp<< endl ;
   cout << "La division es:" << divisionresp<< endl ;
}