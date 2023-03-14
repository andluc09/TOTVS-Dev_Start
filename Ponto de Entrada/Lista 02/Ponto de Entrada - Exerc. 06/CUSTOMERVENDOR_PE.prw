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

    if (INCLUI .OR. ALTERA) .AND. (cIdPonto == 'FORMLINEPOS')
        if ExistBlock('ValidCadast')
            ExecBlock('ValidCadast', .F., .F.)
        endif
    endif

Return xRet
