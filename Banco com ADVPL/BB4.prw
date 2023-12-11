#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

// Manipulando dados com Reclok

User Function BB4()

    Local aArea := SB1 -> (GetArea())

    DbSelectArea('SB1')  // Estou selecionando a area SB1 das tabela no sistema
    SB1->(DbSettOrder(1)) // Estou passando a ordem da tabela
    SB1->(DbGoTop()) // Estou colocando o curso no topo da tabela 

    // Iniciar a Transação

    Begin Transaction // Begin Aqui estou iniciando a transação

        MsgInfo("A descrição do produto será altera") // informando o que eu vou fazer 

    if SB1 ->(DbSeek(FWxFilial('SB1') + "000002")) // Estou buscando o produto na tabela 
        RecLock('SB1', .F.) // Travando a tabela para fazer alteração
    Replace B1_DESC With "Monitor DELL 42 PL" // Aqui estou Subistituindo a descrição do produto selecionado

        SB1->(MsUnlock()) // Aqui estou desbloqueando a tabela apos fazer a alteração

    Endif
        MsgAlert("Alteração feita com sucesso!!")

    END Transaction // Finalizando a transação 

    RestArea(aArea) // Liberando a area 

Return
