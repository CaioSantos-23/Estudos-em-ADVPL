#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'TopConn.CH'


/**
Como realizar uma colsulta SQL com ADVPL
**/


/**

 cQuery := "SELECT " 
    cQuery += " B1_COD AS CODIGO, " // Aqui estou somando o que a Variavel cQuery esta recebendo e dizendo o que e pra seleciona na tabela
    cQuery += " B1_DESC AS DESCRICAO " // Aqui também estou selecionando o que eu quero pegar na tabela
    cQuery += " FROM " // Em qual tabela 
    cQuery += " "+ RetSQLNAME("SB1")+ "SB1" // O que Seria esse [RestSQLName] e o nome da tabela Caso sua empressa tenha uma tabela com um nome especifico você pode usar esse comando
    cQuery += " WHERE " // Aqui estou adicionando um condição
    cQuery += " B1_MSBLQL != '1' " // Aqui estou dizendo que so quero os itens que são diferente de 1 na coluna [B1_MSBLQL] para que eu  não pegue número deletados 

Exemplo de código escrito em apenas em uma linha 

cQuery := " SELECT " + " B1_COD AS CODIGO, " + " B1_DESC AS DESCRICAO " + " FROM " + " " RetSQLNAME("SB1")+ "SB1" + " WHERE " + " B1_MSBLQL != '1' " 

---------------------*-------------------------*-------------------*-----------------


// Executando a Consulta Acima //
        TCQuery cQuery New Alias "TMP" // Estou criando uma tabela temporaria 

        While ! TMP->(EOF()) // Aqui estou dizendo que enquanto for diferente de final de arquivo (EOF)
            AADD(aDados, TMP->CODIGO) // Aqui estou adicionado dentro da tabela temporaria e o código
            AADD(aDados, TMP->DESCRICAO) // Aqui estou adicionado dentro da tabela temporaria a Descrição 
            TMP->(DbSkip()) //  Aqui estou dizendo para depois que ele receber os valores sai da tabela temporaria 

        ENDDO 
        
         Alert(Len(aDados))

            For nCount := 1 To Len(aDados) // Aqui estou fazendo um loop para preencher a tabela temporia indo 1 até o ultimo elemeto da Variavel (aDados)
                MsgInfo(aDados[nCount])
            Next nCount

            TMP->(DbCloseArea()) // Aqui estou fechando a tabela temporaria (TMP) que eu criei 
            RestArea(aArea) // Aqui estou liberando a Area SB1
**/

User Function BB03()

    Local aArea := SB1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount

    cQuery := "SELECT " 
    cQuery += " B1_COD AS CODIGO, " 
    cQuery += " B1_DESC AS DESCRICAO " 
    cQuery += " FROM " 
    cQuery += " "+ RetSQLNAME("SB1")+ "SB1" 
    cQuery += " WHERE " 
    cQuery += " B1_MSBLQL != '1' " 

        TCQuery cQuery New Alias "TMP" 

        While ! TMP->(EOF()) 
            AADD(aDados, TMP->CODIGO) 
            AADD(aDados, TMP->DESCRICAO)  
            TMP->(DbSkip()) 

        ENDDO 

        Alert(Len(aDados))

            For nCount := 1 To Len(aDados) 
                MsgInfo(aDados[nCount])
            Next nCount

            TMP->(DbCloseArea())  
            RestArea(aArea) 

RETURN
