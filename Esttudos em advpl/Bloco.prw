#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

User Function BLOCO()

    //Local bBloco :={|| Alert("Helo Word")}
      //  Eval(bBloco)

    Local bBloco :={|cMsg| Alert(cMsg)} // passagem por par�entros - Bloco de c�digos
        Eval(bBloco, "Ol� mundo!")

Return
