#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

//Estudos sobre Arreys
// Arreys s�o uma lista de varias coisas 

User Function BB()

    Local dData := Date()
    Local aValores := {"Jo�o", dData, 100}

    Alert(aValores[2]) // Vai Exibir a possi��o 2 do array
    Alert(aValores[3])
Return
