#INCLUDE 'TOTVS.CH'

/*/
    Andr� Lucas M. Santos

    Exerc�cio 2 - Lista: Pontos de Entrada
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

    if ((INCLUI .OR. ALTERA) == .F.) .AND. (cIdPonto == 'MODELPOS')
        if ExistBlock('ConfExcl')
            ExecBlock('ConfExcl', .F., .F., aParam[1]:aControls)
        endif
    endif

Return xRet