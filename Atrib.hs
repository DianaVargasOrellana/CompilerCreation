-- do not edit; automatically generated by UU_AG
module Atrib where

type Lista = [String]
type String2 = String
type String3 = String

fencontrar y t@(x:xs) | y `elem` t = [] 
                      | otherwise = y:[] 

captura t@(x:xs) (y:ys) = fencontrar y t ++ captura t ys 
captura [] (y:ys) = []
captura t@(x:xs) [] = [] 

duplicado (x:xs) | x `elem` xs = [x] ++ duplicado xs 
                 | otherwise = duplicado xs
duplicado [] = []
-- CodCondResp -------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista

-}
{-
   local variables for CodCondResp.Resp:

-}
data CodCondResp = CodCondResp_Resp (String) (String2)
-- semantic domain
type T_CodCondResp = ((String),(Lista))
-- cata
sem_CodCondResp :: (CodCondResp) ->
                   (T_CodCondResp)
sem_CodCondResp ((CodCondResp_Resp (_string) (_string2))) =
    (sem_CodCondResp_Resp (_string) (_string2))
sem_CodCondResp_Resp :: (String) ->
                        (String2) ->
                        (T_CodCondResp)
sem_CodCondResp_Resp (_string) (_string2) =
    let 
    in  ("   " ++ _string ++ " = 0;" ++ "\n" ++
         "   " ++ "cout <<" ++ _string2 ++ "<< endl ;"
        ,_string:[]
        )
-- CodCondicional ----------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      u                    : Lista

-}
{-
   local variables for CodCondicional.CodCon1:

-}
data CodCondicional = CodCondicional_CodCon1 (String) (Expresion)
-- semantic domain
type T_CodCondicional = ((String),(Lista),(Lista))
-- cata
sem_CodCondicional :: (CodCondicional) ->
                      (T_CodCondicional)
sem_CodCondicional ((CodCondicional_CodCon1 (_string) (_expresion))) =
    (sem_CodCondicional_CodCon1 (_string) ((sem_Expresion (_expresion))))
sem_CodCondicional_CodCon1 :: (String) ->
                              (T_Expresion) ->
                              (T_CodCondicional)
sem_CodCondicional_CodCon1 (_string) (_expresion) =
    let ( _expresion_cod,_expresion_u) =
            (_expresion )
    in  ("   " ++ _string ++ " = " ++ _expresion_cod ++ ";",_string:[],_expresion_u)
-- CodFuncion --------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      u                    : Lista

-}
{-
   local variables for CodFuncion.Co1:

-}
{-
   local variables for CodFuncion.Co2:

-}
data CodFuncion = CodFuncion_Co1 (String) (Expresion) (String2)
                | CodFuncion_Co2 (Expresion) (CodCondicional) (CodCondResp) (String)
-- semantic domain
type T_CodFuncion = ((String),(Lista),(Lista))
-- cata
sem_CodFuncion :: (CodFuncion) ->
                  (T_CodFuncion)
sem_CodFuncion ((CodFuncion_Co1 (_string) (_expresion) (_string2))) =
    (sem_CodFuncion_Co1 (_string) ((sem_Expresion (_expresion))) (_string2))
sem_CodFuncion ((CodFuncion_Co2 (_expresion) (_codCondicional) (_codCondResp) (_string))) =
    (sem_CodFuncion_Co2 ((sem_Expresion (_expresion))) ((sem_CodCondicional (_codCondicional))) ((sem_CodCondResp (_codCondResp))) (_string))
sem_CodFuncion_Co1 :: (String) ->
                      (T_Expresion) ->
                      (String2) ->
                      (T_CodFuncion)
sem_CodFuncion_Co1 (_string) (_expresion) (_string2) =
    let ( _expresion_cod,_expresion_u) =
            (_expresion )
    in  (" int " ++ _string ++ " = " ++ _expresion_cod ++ ";" ++ "\n" ++
         " return " ++ _string2 ++ ";"
        ,_string:[]
        ,_expresion_u ++ _string2:[]
        )
sem_CodFuncion_Co2 :: (T_Expresion) ->
                      (T_CodCondicional) ->
                      (T_CodCondResp) ->
                      (String) ->
                      (T_CodFuncion)
sem_CodFuncion_Co2 (_expresion) (_codCondicional) (_codCondResp) (_string) =
    let ( _expresion_cod,_expresion_u) =
            (_expresion )
        ( _codCondicional_cod,_codCondicional_d,_codCondicional_u) =
            (_codCondicional )
        ( _codCondResp_cod,_codCondResp_d) =
            (_codCondResp )
    in  (" int " ++ _string ++ ";" ++ "\n" ++
          " if" ++ "(" ++ _expresion_cod ++ "){" ++ "\n" ++
          _codCondicional_cod ++ "\n" ++
          " } else {" ++ "\n" ++
          _codCondResp_cod ++ "\n" ++
          " }" ++ "\n" ++
          "return " ++ _string ++ ";"
        ,_codCondicional_d
        ,_string:[]
        )
-- Expresion ---------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      u                    : Lista

-}
{-
   local variables for Expresion.Expre:

-}
{-
   local variables for Expresion.Expre1:

-}
{-
   local variables for Expresion.Expre2:

-}
{-
   local variables for Expresion.Expre3:

-}
{-
   local variables for Expresion.Expre4:

-}
data Expresion = Expresion_Expre (String) (String2)
               | Expresion_Expre1 (String) (String2)
               | Expresion_Expre2 (String) (String2)
               | Expresion_Expre3 (String) (String2)
               | Expresion_Expre4 (String)
-- semantic domain
type T_Expresion = ((String),(Lista))
-- cata
sem_Expresion :: (Expresion) ->
                 (T_Expresion)
sem_Expresion ((Expresion_Expre (_string) (_string2))) =
    (sem_Expresion_Expre (_string) (_string2))
sem_Expresion ((Expresion_Expre1 (_string) (_string2))) =
    (sem_Expresion_Expre1 (_string) (_string2))
sem_Expresion ((Expresion_Expre2 (_string) (_string2))) =
    (sem_Expresion_Expre2 (_string) (_string2))
sem_Expresion ((Expresion_Expre3 (_string) (_string2))) =
    (sem_Expresion_Expre3 (_string) (_string2))
sem_Expresion ((Expresion_Expre4 (_string))) =
    (sem_Expresion_Expre4 (_string))
sem_Expresion_Expre :: (String) ->
                       (String2) ->
                       (T_Expresion)
sem_Expresion_Expre (_string) (_string2) =
    let 
    in  (_string ++ "+" ++ _string2,_string:[] ++ _string2:[])
sem_Expresion_Expre1 :: (String) ->
                        (String2) ->
                        (T_Expresion)
sem_Expresion_Expre1 (_string) (_string2) =
    let 
    in  (_string ++ "-" ++ _string2,_string:[] ++ _string2:[])
sem_Expresion_Expre2 :: (String) ->
                        (String2) ->
                        (T_Expresion)
sem_Expresion_Expre2 (_string) (_string2) =
    let 
    in  (_string ++ "*" ++ _string2,_string:[] ++ _string2:[])
sem_Expresion_Expre3 :: (String) ->
                        (String2) ->
                        (T_Expresion)
sem_Expresion_Expre3 (_string) (_string2) =
    let 
    in  (_string ++ "/" ++ _string2,_string:[] ++ _string2:[])
sem_Expresion_Expre4 :: (String) ->
                        (T_Expresion)
sem_Expresion_Expre4 (_string) =
    let 
    in  (_string ++ ">0",_string:[])
-- Funcion -----------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      k                    : Lista
      u1                   : Lista

-}
{-
   local variables for Funcion.Fue:

-}
data Funcion = Funcion_Fue (String) (Parametros) (CodFuncion)
-- semantic domain
type T_Funcion = ((String),(Lista),(Lista),(Lista))
-- cata
sem_Funcion :: (Funcion) ->
               (T_Funcion)
sem_Funcion ((Funcion_Fue (_string) (_parametros) (_codFuncion))) =
    (sem_Funcion_Fue (_string) ((sem_Parametros (_parametros))) ((sem_CodFuncion (_codFuncion))))
sem_Funcion_Fue :: (String) ->
                   (T_Parametros) ->
                   (T_CodFuncion) ->
                   (T_Funcion)
sem_Funcion_Fue (_string) (_parametros) (_codFuncion) =
    let ( _parametros_cod,_parametros_d,_parametros_k,_parametros_u) =
            (_parametros )
        ( _codFuncion_cod,_codFuncion_d,_codFuncion_u) =
            (_codFuncion )
    in  ("int " ++ _string ++ "(" ++ _parametros_cod ++ ")" ++
         "{" ++ "\n" ++
         _codFuncion_cod ++ "\n"
          ++"}"  ++ "\n\n"
        ,_parametros_d ++ _codFuncion_d
        ,duplicado _parametros_k
        ,captura (_parametros_d ++ _codFuncion_d)  _codFuncion_u
        )
-- Funciones ---------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      k                    : Lista
      u1                   : Lista

-}
{-
   local variables for Funciones.Fu:

-}
{-
   local variables for Funciones.VacioA:

-}
data Funciones = Funciones_Fu (Funcion) (Funciones)
               | Funciones_VacioA 
-- semantic domain
type T_Funciones = ((String),(Lista),(Lista),(Lista))
-- cata
sem_Funciones :: (Funciones) ->
                 (T_Funciones)
sem_Funciones ((Funciones_Fu (_funcion) (_funciones))) =
    (sem_Funciones_Fu ((sem_Funcion (_funcion))) ((sem_Funciones (_funciones))))
sem_Funciones ((Funciones_VacioA )) =
    (sem_Funciones_VacioA )
sem_Funciones_Fu :: (T_Funcion) ->
                    (T_Funciones) ->
                    (T_Funciones)
sem_Funciones_Fu (_funcion) (_funciones) =
    let ( _funcion_cod,_funcion_d,_funcion_k,_funcion_u1) =
            (_funcion )
        ( _funciones_cod,_funciones_d,_funciones_k,_funciones_u1) =
            (_funciones )
    in  (_funcion_cod ++ _funciones_cod,_funcion_d ++ _funciones_d,_funcion_k ++ _funciones_k,_funcion_u1 ++ _funciones_u1)
sem_Funciones_VacioA :: (T_Funciones)
sem_Funciones_VacioA  =
    let 
    in  ("",[],[],[])
-- Inicio ------------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:

-}
{-
   local variables for Inicio.In:

-}
data Inicio = Inicio_In (String)
-- semantic domain
type T_Inicio = ()
-- cata
sem_Inicio :: (Inicio) ->
              (T_Inicio)
sem_Inicio ((Inicio_In (_string))) =
    (sem_Inicio_In (_string))
sem_Inicio_In :: (String) ->
                 (T_Inicio)
sem_Inicio_In (_string) =
    let 
    in  ()
-- Main --------------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String

-}
{-
   local variables for Main.Ma:

-}
data Main = Main_Ma (Sentencias)
-- semantic domain
type T_Main = ((String))
-- cata
sem_Main :: (Main) ->
            (T_Main)
sem_Main ((Main_Ma (_sentencias))) =
    (sem_Main_Ma ((sem_Sentencias (_sentencias))))
sem_Main_Ma :: (T_Sentencias) ->
               (T_Main)
sem_Main_Ma (_sentencias) =
    let ( _sentencias_cod) =
            (_sentencias )
    in  ("int main() {" ++ "\n" ++
             _sentencias_cod ++
              "}"
        )
-- Parametros --------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      k                    : Lista
      u                    : Lista

-}
{-
   local variables for Parametros.Pa:

-}
data Parametros = Parametros_Pa (String) (String2)
-- semantic domain
type T_Parametros = ((String),(Lista),(Lista),(Lista))
-- cata
sem_Parametros :: (Parametros) ->
                  (T_Parametros)
sem_Parametros ((Parametros_Pa (_string) (_string2))) =
    (sem_Parametros_Pa (_string) (_string2))
sem_Parametros_Pa :: (String) ->
                     (String2) ->
                     (T_Parametros)
sem_Parametros_Pa (_string) (_string2) =
    let 
    in  ("int " ++ _string ++ ", " ++ "int " ++ _string2,_string:[] ++ _string2:[],_string:[] ++ _string2:[],_string:[] ++ _string2:[])
-- Programa ----------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String
      d                    : Lista
      k                    : Lista
      u1                   : Lista

-}
{-
   local variables for Programa.Pro:

-}
data Programa = Programa_Pro (Funciones) (Main) (Inicio)
-- semantic domain
type T_Programa = ((String),(Lista),(Lista),(Lista))
-- cata
sem_Programa :: (Programa) ->
                (T_Programa)
sem_Programa ((Programa_Pro (_funciones) (_main) (_inicio))) =
    (sem_Programa_Pro ((sem_Funciones (_funciones))) ((sem_Main (_main))) ((sem_Inicio (_inicio))))
sem_Programa_Pro :: (T_Funciones) ->
                    (T_Main) ->
                    (T_Inicio) ->
                    (T_Programa)
sem_Programa_Pro (_funciones) (_main) (_inicio) =
    let ( _funciones_cod,_funciones_d,_funciones_k,_funciones_u1) =
            (_funciones )
        ( _main_cod) =
            (_main )
    in  ("#include <iostream>" ++ "\n" ++
          "using namespace std;" ++ "\n" ++
          _funciones_cod ++ _main_cod
        ,_funciones_d
        ,_funciones_k
        ,_funciones_u1
        )
-- Sentencia ---------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String

-}
{-
   local variables for Sentencia.Sen:

-}
{-
   local variables for Sentencia.Sen1:

-}
{-
   local variables for Sentencia.Sen2:

-}
data Sentencia = Sentencia_Sen (String) (TipoSentencia)
               | Sentencia_Sen1 (String) (String2)
               | Sentencia_Sen2 (String) (String2)
-- semantic domain
type T_Sentencia = ((String))
-- cata
sem_Sentencia :: (Sentencia) ->
                 (T_Sentencia)
sem_Sentencia ((Sentencia_Sen (_string) (_tipoSentencia))) =
    (sem_Sentencia_Sen (_string) ((sem_TipoSentencia (_tipoSentencia))))
sem_Sentencia ((Sentencia_Sen1 (_string) (_string2))) =
    (sem_Sentencia_Sen1 (_string) (_string2))
sem_Sentencia ((Sentencia_Sen2 (_string) (_string2))) =
    (sem_Sentencia_Sen2 (_string) (_string2))
sem_Sentencia_Sen :: (String) ->
                     (T_TipoSentencia) ->
                     (T_Sentencia)
sem_Sentencia_Sen (_string) (_tipoSentencia) =
    let ( _tipoSentencia_cod) =
            (_tipoSentencia )
    in  ("   int " ++ _string ++ " = " ++ _tipoSentencia_cod)
sem_Sentencia_Sen1 :: (String) ->
                      (String2) ->
                      (T_Sentencia)
sem_Sentencia_Sen1 (_string) (_string2) =
    let 
    in  ("   cout << " ++ _string ++ " << " ++ _string2 ++ "<< endl ;")
sem_Sentencia_Sen2 :: (String) ->
                      (String2) ->
                      (T_Sentencia)
sem_Sentencia_Sen2 (_string) (_string2) =
    let 
    in  ("   string " ++ _string ++ ";" ++ "\n" ++
         "   cout << " ++ _string2 ++ "; "  ++ "\n" ++ "   cin >> " ++ _string ++ ";"
        )
-- Sentencias --------------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String

-}
{-
   local variables for Sentencias.Se:

-}
{-
   local variables for Sentencias.VacioC:

-}
data Sentencias = Sentencias_Se (Sentencia) (Sentencias)
                | Sentencias_VacioC 
-- semantic domain
type T_Sentencias = ((String))
-- cata
sem_Sentencias :: (Sentencias) ->
                  (T_Sentencias)
sem_Sentencias ((Sentencias_Se (_sentencia) (_sentencias))) =
    (sem_Sentencias_Se ((sem_Sentencia (_sentencia))) ((sem_Sentencias (_sentencias))))
sem_Sentencias ((Sentencias_VacioC )) =
    (sem_Sentencias_VacioC )
sem_Sentencias_Se :: (T_Sentencia) ->
                     (T_Sentencias) ->
                     (T_Sentencias)
sem_Sentencias_Se (_sentencia) (_sentencias) =
    let ( _sentencia_cod) =
            (_sentencia )
        ( _sentencias_cod) =
            (_sentencias )
    in  (_sentencia_cod ++ "\n" ++ _sentencias_cod)
sem_Sentencias_VacioC :: (T_Sentencias)
sem_Sentencias_VacioC  =
    let 
    in  ("")
-- TipoSentencia -----------------------------------------------
{-
   inherited attributes:

   chained attributes:

   synthesised attributes:
      cod                  : String

-}
{-
   local variables for TipoSentencia.T2:

-}
{-
   local variables for TipoSentencia.T3:

-}
data TipoSentencia = TipoSentencia_T2 (String)
                   | TipoSentencia_T3 (String) (String2) (String3)
-- semantic domain
type T_TipoSentencia = ((String))
-- cata
sem_TipoSentencia :: (TipoSentencia) ->
                     (T_TipoSentencia)
sem_TipoSentencia ((TipoSentencia_T2 (_string))) =
    (sem_TipoSentencia_T2 (_string))
sem_TipoSentencia ((TipoSentencia_T3 (_string) (_string2) (_string3))) =
    (sem_TipoSentencia_T3 (_string) (_string2) (_string3))
sem_TipoSentencia_T2 :: (String) ->
                        (T_TipoSentencia)
sem_TipoSentencia_T2 (_string) =
    let 
    in  ("stoi(" ++ _string ++ ");")
sem_TipoSentencia_T3 :: (String) ->
                        (String2) ->
                        (String3) ->
                        (T_TipoSentencia)
sem_TipoSentencia_T3 (_string) (_string2) (_string3) =
    let 
    in  ("" ++ _string ++ "(" ++ _string2 ++ ", " ++ _string3 ++ ");")

