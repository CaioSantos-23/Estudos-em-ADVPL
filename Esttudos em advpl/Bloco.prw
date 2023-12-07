#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

User Function BLOCO()

    //Local bBloco :={|| Alert("Helo Word")}
      //  Eval(bBloco)

    Local bBloco :={|cMsg| Alert(cMsg)} // passagem por parâentros - Bloco de códigos
        Eval(bBloco, "Olá mundo!")

Return
