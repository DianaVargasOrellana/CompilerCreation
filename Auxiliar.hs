module Auxiliar where
import Scanner

data Error = ErrorSemantico String
           deriving Show

  
validacion x = null x  

mensajeError a = putStr ("***Error semantico:*** \n" ++ " No existe una declaracion de variable para: " ++ show (a))

mensajeError1 a = putStr ("***Error semantico:*** \n" ++  "La variable " ++ show (a) ++ " esta doblemente declarada")


   
                  
