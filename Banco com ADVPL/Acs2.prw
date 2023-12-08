#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

/**
Acessando uma tabela no Banco de Dados com ADVPL
E
Procurando um produto
**/
User function Banc0()

    Local aArea := SB1->(GetArea()) // Selecionando a area que você deseja acessar 
    Local cMsg:= ""

    DbSelectArea("SB1") // Abrindo a Area da tabela 
    SB1->(DbSetOrder(1)) // Seleciona o indice da tabela nesse caso eu estou selecionando o primeiro indice da tabela
    SB1->(DbGoTop()) // Indo pro topo da tabela 

    cMsg := Posicione( 'SB1',;
                        1,;
                        FWXfilial("SB1")+ "000002",;
                        'B1_DESC')
    Alert("Descrição do Produto" + cMsg)

    RestArea(aArea) // Fechando a tabela 



Return
