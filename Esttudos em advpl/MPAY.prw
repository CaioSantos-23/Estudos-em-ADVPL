#INCLUDE 'PROTHEUS.CH'
#INCLUDE 'RWMAKE.CH'
#INCLUDE 'FONT.CH'
#INCLUDE 'COLORS.CH'

/**
    AADD() permite a inser��o de um item em um Array j� existente
    AINS() Permite a inser��o de um elemento em qualquer posi��o do Array
    ACLONE() Realizar a c�pia de um array para outro
    ADEL() Permite a exclus�o de um elemento do Array, Tornando o ultimo valor Nuul
    ASIZE() Redefine a estrutura de um array pr�-existente, adicionando ou removendo
    Len() Retorna a quantidade de elementos de um Array

**/


User Function AVETOR()

    Local aVetor := {10, 20, 30}
    Local aVetor2


    AaDd(aVetor, 40) // Aqui eu estou acresentando mais um elemento ao Array
    Alert(len(aVetor)) // Aqui estou exibindo Quantas posi��es eu tenho no Array

    AIns(aVetor, 2) // Aqui Eu estou acresentando um valor na segunda possi��o
    aVetor[2] := 200 // Estou defindo o valor do elemento da segunda posi��o
    Alert(aVetor[2]) // Estou exibindo o valor da segunda posi��o
    Alert(Len(aVetor)) // Vai exibir a quantidade de posi��es

    aVetor2 := AClone(aVetor) // Aqui estou clonando o Array 
        for nCount := 1 To Len(aVetor2) // Aqui estou dizendo para contar ate dar o tamanhdo do primeiro array
            Alert(aVetor2[nCount]) // Estou exibindo os elementos da segunda lista 
        
        Next nCount


    Adel(aVetor,2) //Aqui esotu deletando o terceiro elemento 
    Alert(aVetor[3])
    Alert(Len(avetor))

    Asize(aVetor, 2) // Aqui estou deixando o Elemento apenas com 2 posi��es
    Alert(Len(aVetor))



Return

