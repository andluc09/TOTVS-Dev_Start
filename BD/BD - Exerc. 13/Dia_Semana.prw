#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function Dia_Semana
    Lista BD - Exerc�cio 13
    @type  Function
    @author Andr� Lucas M. Santos
    @since 21/03/2023
    @version 0.1
    @see https://tdn.totvs.com/pages/viewpage.action?pageId=27677552
/*/

User Function Dia_Semana()

    Local aSemana := {'Domingo', 'Segunda', 'Ter�a', 'Quarta', 'Quinta', 'Sexta', 'S�bado'}
    Local nNum    := 0

    cNum := FWInputBox("Insira um n�mero: ", cNum)

    nNum := VAL(cNum)

    if(nNum >= 1 .AND. nNum <=7)
        FWAlertInfo(aSemana[nNum], 'Dia da semana: ')
    else
        FWAlertWarning('Valor inv�lido!', 'ATEN��O')
    endif

Return 
