#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function Produt13
    Lista 01 - Fundamentos da Linguagem ADVPL | Exerc�cio 13
    @type  Function
    @author Andr� Lucas M. Santos
    @since 04/04/2023
    @version 0.1
    @see https://tdn.totvs.com/display/tec/AdvPL
    @see https://tdn.totvs.com/display/tec/AdvPL+-+Functions
    @see https://tdn.totvs.com/pages/releaseview.action?pageId=23888829
/*/

User Function Produt13()

    Local cNome   := ''
    Local cValor  := ''
    Local cQuant  := ''
    Local nTotal  := 0
    Local nTotalD := 0

//*Colocar valida��o isDigit sem NEGATIVO, depois

    cNome  := FwInputBox('Insira o nome do produto adquirido:', cNome)
    cValor := FwInputBox('Insira o valor unit�rio do produto:', cValor)
    cQuant := FwInputBox('Insira a quantidade deste produto adquirido:', cQuant)

    if VAL(cQuant) <= 5
        nTotal := VAL(cQuant) * VAL(cValor)
        nDesct := (nTotal * (2/100))
        nTotalD := nTotal - nDesct
    elseif VAL(cQuant) > 5 .AND. VAL(cQuant)  <= 10
        nTotal := VAL(cQuant) * VAL(cValor)
        nDesct := (nTotal * (3/100))
        nTotalD := nTotal - nDesct
    else 
        nTotal := VAL(cQuant) * VAL(cValor)
        nDesct := (nTotal * (5/100))
        nTotalD := nTotal - nDesct
    endif

    FWAlertInfo(" O valor total: R$ " + StrTran(cValToChar(nTotal),'.',',') + CRLF + CRLF +;
    "O valor do desconto: R$ " + StrTran(cValToChar(nDesct),'.',',') + CRLF + CRLF +;
    "O valor a pagar: R$ " + StrTran(cValToChar(nTotalD),'.',','), 'Produto adquirido: ' + cNome)

Return
