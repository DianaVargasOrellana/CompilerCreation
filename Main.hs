module Main where
import UU_Parsing
import Scanner
import Atrib
import ParserG
import Auxiliar


palabrasClave = ["def", "return", "if", "else", "main", "input", "int", "print", "name"]

operadores = ["()", "==", ">", "__", "(", ")", "=", "+", "-", "/", "_", "*", ">"]
opeBasicos = "(=+*-/_>)"
simbolos = ":,"
generar archivo codigo = do
                             writeFile ((faux1 archivo)++ ".cpp") codigo
                             putStr ( "Archivo: " ++(faux1 archivo)++ ".cs " ++ "generado")

faux1 ('.':xs)=[]
faux1 []      =[]
faux1 (x:xs)  =x : faux1 xs

main = do 
       putStr "Nombre del Archivo: "
       nomF <- getLine
       tokens <-  scanner palabrasClave operadores simbolos opeBasicos nomF
       putStr (show tokens)
       out <- parseIO pPrograma tokens
       let (cod,d,k, u) = out
       putStr (show "Esta es la lista de Declarados:" ++ show d ++"\n")
       putStr (show "Esta es la lista de no declarados:" ++ show u ++"\n")
       putStr (show "Esta es la lista de declarados dos veces:" ++ show k ++"\n")
       if (validacion k)
          then if (validacion u)
           then generar nomF cod
              else mensajeError u
        else
            mensajeError1 k

       