#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function Operador()
    Local nNum1 := 10 
    Local nNum2 := 20

    Alert(nNum1 + nNum2) // Soma
    Alert(nNum2 - nNum1) // Subtra��o
    Alert(nNum1 * nNum2) // multiplica��o 
    Alert(nNum2 / nNum1) // Divis�o
    Alert(nNum2 % nNum1) // Resto

RETURN

User Function OperRel()
    
    Alert(nNum1 < nNum2) // Compara��o de menor
    Alert(nNum1 > nNum2)  // Compara��o de maior
    Alert(nNum1 = nNum2)  // Compara��o de igual
    Alert(nNum1 == nNum2) // Exatamente igual
    Alert(nNum1 <= nNum2) // Compara��o de menor igual
    Alert(nNum1 >= nNum2) // Compara��o de maior igual
    Alert(nNum1 != nNum2) // Compara��o de diferente 
RETURN


// Operadores de Atribui��o 

nNum1 := 10 // Atribui��o de valor 
nNum1 += nNum2 
nNum2 -= nNum1
nNum1 *= nNum2
nNum2 /= nNum1
//nNum2 %= nNum1
