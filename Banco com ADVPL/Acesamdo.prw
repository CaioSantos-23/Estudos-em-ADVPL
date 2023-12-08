#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

/**
Acessando uma tabela no Banco de Dados com ADVPL
E
Procurando um produto
**/
User function Banc0()

    Local aArea := SB1->(GetArea()) // Selecionando a area que você deseja acessar 


    DbSelectArea("SB1") // Abrindo a Area da tabela 
    SB1->(DbSetOrder(1)) // Seleciona o indice da tabela nesse caso eu estou selecionando o primeiro indice da tabela
    SB1->(DbGoTop()) // Indo pro topo da tabela escolhida


 //////////Procurando o produto de código "000002"////////////
    If SB1-> (dbSeek(FWXFilial("SB1")+ "000002"))  // Aqui estou procurando o produto na tabela com base no código
        Alert(SB1->B1_DESC) // Vai exibir o produto 
    ENDIF

    RestArea(aArea) // Fechando a tabela 



Return
