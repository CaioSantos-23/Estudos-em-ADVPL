#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'


User Function EstrRep()
   
   Local nCount
   Local nNum := 0

   For nCount := 0 To 10 Step 2   // Aqui estou passando de quanto a quanto ele tem que contar caso eu adicione o step ele vai pular de acordo com o núemro que eu colocar 

   nNum += nCount
   
   NEXT
   Alert("Valor: "+ cValtToChar(nNum))


RETURN
