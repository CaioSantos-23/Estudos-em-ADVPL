#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function ESTRUT()
   Local nNum1 := 22
   Local nNum2 := 100
   if(nNum1 <= nNum2)

        Msginfo("A variavel nNum1 � menor ou igual a nNum2")
    else
        msginfo("A variavel nNum1 n�o � menor ou igual a nNum2")
    ENDIF


RETURN


/// Elseif-----------------------

User Function ESTRUT2()
   Local nNum3 := 22
   Local nNum4 := 100
   if(nNum1 = nNum2)

        Msginfo("A variavel nNum1 � menor ou igual a nNum2")
    elseif(nNum3 > nNum4)
        MsgAlert("A variavel � maior")
    elseif(nNum3 != nNum4) 
        MsgAlert("A variavel nNum3 � diferente de nNum4")
        
    ENDIF


RETURN
