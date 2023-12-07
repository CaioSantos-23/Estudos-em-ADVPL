#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function WI()

    Local nNum1:= 0
    Local nNum2:= 10

    While  nNum1 < NNum2

        nNum++

    ENDDO
        Alert(nNum1 + nNum2)
        
Return


User Function WI2()

    Local nNum3:= 1
    Local cNome := "RCTI"

    While nNum3 != 10 .AND.  cNome != "Protheus" // Aqui eu estou falando que se a variavel nNum3 for diferente de 10 e a varival cNome não for diferente de protheus 
        nNum3 ++ // Acrecsente mais 1 
            if nNum3 == 5 // se a varivavel for igual a 5 troque o nome por prothues
            cNome:= "Protheus"
                
            endif
    EndDo
        Alert("Numero: "+ CVALTOCHAR(nNum3))
        Alert("Nome: "+ CVALTOCHAR(cNome))
    
Return
