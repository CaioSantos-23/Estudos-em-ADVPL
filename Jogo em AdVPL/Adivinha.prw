#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

User function ADIV()


Local nNum := Randomize(1,1000)
Local nChute := 0
Local nTent := 0 



While nChute != nNum
nChute := Val(FWInputBox("Escolha um número [1 a 1000]"))
    if nChute == nNum
        MsgInfo("Acertou miseravi " + cValtoChar(nChute) + "<br>Erros: " + CVALTOCHAR( nTent ), " Fim do jogo")
    
    ElseIf nchute > nNum 
        MsgAlert("Valor muito Alto", "Tente novamente")
        nTent += 1

    else
        MsgAlert("Valor Baixo", "Tente novamente")
        nTent += 1
    Endif
End



Return
