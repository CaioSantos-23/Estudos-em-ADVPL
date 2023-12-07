#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

//Estudos sobre Arreys
// Arreys são uma lista de varias coisas 

User Function BB()

    Local dData := Date()
    Local aValores := {"João", dData, 100}

    Alert(aValores[2]) // Vai Exibir a possição 2 do array
    Alert(aValores[3])
Return
