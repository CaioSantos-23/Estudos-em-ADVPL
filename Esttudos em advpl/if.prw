#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function ESTRUT()
   Local nNum1 := 22
   Local nNum2 := 100
   if(nNum1 <= nNum2)

        Msginfo("A variavel nNum1 é menor ou igual a nNum2")
    else
        msginfo("A variavel nNum1 não é menor ou igual a nNum2")
    ENDIF


RETURN


/// Elseif-----------------------

User Function ESTRUT2()
   Local nNum3 := 22
   Local nNum4 := 100
   if(nNum1 = nNum2)

        Msginfo("A variavel nNum1 é menor ou igual a nNum2")
    elseif(nNum3 > nNum4)
        MsgAlert("A variavel é maior")
    elseif(nNum3 != nNum4) 
        MsgAlert("A variavel nNum3 é diferente de nNum4")
        
    ENDIF


RETURN
