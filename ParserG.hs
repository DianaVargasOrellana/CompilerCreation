module ParserG where
import UU_Parsing
import Scanner
import Atrib

pPrograma = sem_Programa_Pro  <$> pFunciones <*> pMain <*> pInicio

pFunciones = sem_Funciones_Fu <$> pFuncion <*> pFunciones
         <|> pSucceed sem_Funciones_VacioA

pFuncion = sem_Funcion_Fue <$ pPalClave "def" <*> pIdent <* pOpClave "(" <*> pParametros <* pOpClave ")" <* pSimbolo ":" <*> pCodFuncion      

pParametros  = sem_Parametros_Pa <$> pIdent <* pSimbolo "," <*> pIdent  


pCodFuncion =  sem_CodFuncion_Co1 <$> pIdent <* pOpClave "=" <*> pExpresion <* pPalClave "return" <*> pIdent
            <|>  sem_CodFuncion_Co2  <$ pPalClave "if" <*> pExpresion <* pSimbolo ":" <*> pCodCondicional <* pPalClave "else" <* pSimbolo ":" <*> pCodCondResp <* pPalClave "return" <*> pIdent

pCodCondicional =  sem_CodCondicional_CodCon1 <$> pIdent <* pOpClave "=" <*> pExpresion      

pCodCondResp = sem_CodCondResp_Resp <$> pIdent <* pOpClave "=" <*> pCadena         


pMain = sem_Main_Ma <$ pPalClave "def" <* pPalClave "main" <* pOpClave "()" <* pSimbolo ":" <*> pSentencias
      
pSentencias = sem_Sentencias_Se <$> pSentencia <*> pSentencias
            <|> pSucceed sem_Sentencias_VacioC            

pSentencia = sem_Sentencia_Sen <$> pIdent <* pOpClave "=" <*> pTipoSentencia
         <|> sem_Sentencia_Sen1 <$ pPalClave "print" <* pOpClave "(" <*> pCadena <* pSimbolo "," <*> pIdent <* pOpClave ")"                  

pTipoSentencia = sem_TipoSentencia_T1 <$ pPalClave "input" <* pOpClave "(" <*> pCadena <* pOpClave ")"
               <|> sem_TipoSentencia_T2 <$ pPalClave "int" <* pOpClave "(" <*> pIdent <* pOpClave ")"
               <|> sem_TipoSentencia_T3 <$> pIdent <* pOpClave "(" <*> pParametros <* pOpClave ")"                                                   

pInicio = sem_Inicio_In <$ pPalClave "if" <* pOpClave "__" <* pPalClave "name" <* pOpClave "__" <* pOpClave "==" <*> pCadena <* pSimbolo ":" <* pPalClave "main" <* pOpClave "()"        

     
pExpresion = sem_Expresion_Expre <$> pIdent <* pOpClave "+" <*> pIdent
        <|>  sem_Expresion_Expre1 <$> pIdent <* pOpClave "-" <*> pIdent
        <|>  sem_Expresion_Expre2 <$> pIdent <* pOpClave "*" <*> pIdent  
        <|>  sem_Expresion_Expre3 <$> pIdent <* pOpClave "/" <*> pIdent  
        <|>  sem_Expresion_Expre4 <$> pIdent <* pOpClave ">" <* pInt       



   
                  
