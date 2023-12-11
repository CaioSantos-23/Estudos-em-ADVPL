#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'

// Manipulando dados com MSExecAuto

User Function BB5()

    Local aArea := GetArea() 
    Local aDados := {}
    Private lMSErroAuto := .F.

    aDado := {;
                {"B1_COD", "111111",           NIL},; // Aqui eu espu dizendo que � pra adicionar na coluna B1_cod o c�digo "111111" e vai retorna um valor n�o especificado (NIL)
                {"B1_DESC", "PRODUTO TESTE",   NIL},;
                {"B1_TIPO", "GG",              NIL},;
                {"B1_UM", "PC",                NIL},;
                {"B1_LOCPAD", "01",            NIL},;
                {"B1_PICM", 0,                 NIL},;
                {"B1_IPI", 0,                  NIL},;
                {"B1_CONTRAT", "N",            NIL},;
                {"B1_LOCALIZ", "N",            NIL};
            }


// Inicio do controle de Transa��o

    Begin Transaction
        //Chamando cadastro de produto
        MSExecAuto({|x,y| MATA010(x,y)},aDados, 3) // Aqui estou Excuatando de forma automatica o Cadastramento de produto 

        // Caso ocorra algum erro
        If lMSErroAuto == .T.
            Alert("Ocorreram erros durante a opera��o!")
            MostraErro()

            DisarmTransaction()
        else
            MsgInfo("Opera��o finalizada!")
        ENDIF

    End Transaction

    RestArea(aArea)

RETURN
