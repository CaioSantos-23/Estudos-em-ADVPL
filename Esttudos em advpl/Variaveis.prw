#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function exerc()
 
 // variaiveis do tipo Locais 
    Local nVar0 := 1
    Local nVar1 := 20


    // Variaveis do tipo privado 
    private cPri := 'private!'

    // Variaveis do tipo publico 
    Public_cPublic := 'RCTI'

    Testexerc(nVar0, @nVar1)

RETURN

//----------Função static -----------

static function Testexerc(nValor1, nValor2)

    local_cPublic := 'Alterei'
    Default nValor1 := 0
    //Alterando o valor da variavel 
    nValor2 := 10

    // Exibindo o conteudo da variavel private 
    Alert("Private: "+ cPri)

    // Altarendo o valor da variavel publica 
    Alert("Publica: "+ _cPublic)

    MsgAlert(nValor2)
    Alert("Variavel Static: "+ cSatic)

RETURN
