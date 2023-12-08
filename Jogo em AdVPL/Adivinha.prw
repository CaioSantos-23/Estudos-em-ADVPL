#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

User function ADIV2()


Local nNum := Randomize(1,1000)
Local nNum1 := Randomize(1,10000)
Local nNum3 := Randomize(1,100)
Local nChute := 0
Local nTent := 0 
Local UserChoice := 0 // A escolha do usuário (pode ser 1, 2 ou 3)
Local JogarNovamente := .T.

While JogarNovamente
UserChoice:=Val(FWInputBox("Escolha uma opção:  [1] modo facil, [2] modo normal e [3] modo dificil "))
    
    if  UserChoice == 1
        Alert("Modo Facil")
        While nChute != nNum3
            nChute := Val(FWInputBox("Escolha um número [1 a 100]"))
            if nChute == nNum3
                MsgInfo("Acertou miseravi " + cValtoChar(nChute) + "<br>Erros: " + CVALTOCHAR( nTent ), " Fim do jogo")
                 JogarNovamente := Val(FWInputBox("Deseja jogar novamente? [1] Sim / [0] Não")) == 1
            ElseIf nchute > nNum3
                MsgAlert("Valor muito Alto", "Tente novamente")
                nTent += 1

            else
                MsgAlert("Valor Baixo", "Tente novamente")
                nTent += 1
            Endif

        end

    Elseif UserChoice == 2
        Alert("Modo Normal")
        While nChute != nNum
            nChute := Val(FWInputBox("Escolha um número [1 a 1000]"))
            if nChute == nNum
                MsgInfo("Acertou miseravi " + cValtoChar(nChute) + "<br>Erros: " + CVALTOCHAR( nTent ), " Fim do jogo")
                 JogarNovamente := Val(FWInputBox("Deseja jogar novamente? [1] Sim / [0] Não")) == 1
            
            ElseIf nchute > nNum 
                MsgAlert("Valor muito Alto", "Tente novamente")
                nTent += 1

            else
                MsgAlert("Valor Baixo", "Tente novamente")
                nTent += 1
            Endif
        end

    Elseif UserChoice == 3
        Alert("Modo Dificil")
        While nChute != nNum1

            nChute := Val(FWInputBox("Escolha um número [1 a 10.000]"))
            if nChute == nNum1
                MsgInfo("Acertou miseravi " + cValtoChar(nChute) + "<br>Erros: " + CVALTOCHAR( nTent ), " Fim do jogo")
                 JogarNovamente := Val(FWInputBox("Deseja jogar novamente? [1] Sim / [0] Não")) == 1
            ElseIf nchute > nNum1 
                MsgAlert("Valor muito Alto", "Tente novamente")
                nTent += 1

            else
                MsgAlert("Valor Baixo", "Tente novamente")
                nTent += 1
            Endif
        end
    Else 
        Alert("Você não digito nenhuma das opções acima")
        JogarNovamente := .F.
    Endif

END


Return
