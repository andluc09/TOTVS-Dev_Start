#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function CUSTOMERVENDOR
    Lista 02: Pontos de Entrada - Exerc�cio 07
    @type  Function
    @author Andr� Lucas M. Santos
    @since 16/03/2023
    @version 0.1
    @see https://tdn.totvs.com/pages/releaseview.action?pageId=208345968
/*/

User Function CUSTOMERVENDOR()

    Local aParam    := PARAMIXB
    Local oObj      := ''
    Local cIdPonto  := ''
    Local cIdModel  := ''

    Public xRet     := .T.

    if aParam <> NIL

        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]

    endif

    if (INCLUI) .AND. (cIdPonto == 'BUTTONBAR')
        if ExistBlock('AutoLoja')
            ExecBlock('AutoLoja', .F., .F., oObj) // Passa como par�metro: Objeto 
        endif
    endif

Return xRet
