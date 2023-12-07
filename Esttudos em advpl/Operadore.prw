#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function Operador()
    Local nNum1 := 10 
    Local nNum2 := 20

    Alert(nNum1 + nNum2) // Soma
    Alert(nNum2 - nNum1) // Subtração
    Alert(nNum1 * nNum2) // multiplicação 
    Alert(nNum2 / nNum1) // Divisão
    Alert(nNum2 % nNum1) // Resto

RETURN

User Function OperRel()
    
    Alert(nNum1 < nNum2) // Comparação de menor
    Alert(nNum1 > nNum2)  // Comparação de maior
    Alert(nNum1 = nNum2)  // Comparação de igual
    Alert(nNum1 == nNum2) // Exatamente igual
    Alert(nNum1 <= nNum2) // Comparação de menor igual
    Alert(nNum1 >= nNum2) // Comparação de maior igual
    Alert(nNum1 != nNum2) // Comparação de diferente 
RETURN


// Operadores de Atribuição 

nNum1 := 10 // Atribuição de valor 
nNum1 += nNum2 
nNum2 -= nNum1
nNum1 *= nNum2
nNum2 /= nNum1
//nNum2 %= nNum1
