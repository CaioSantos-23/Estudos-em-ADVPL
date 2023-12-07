#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function DoCase()
   Local cData := "25/12/2023"
   
   Do Case

    Case cData == "20/12/2023"
    Alert("Não é natal"+ cData)

    Case cData == "25/12/2023"
    Alert("É Natal")

    OTHERWISE
    MsgAlert("Não sei qual dia e hoje !")

   EndCase
   


RETURN
