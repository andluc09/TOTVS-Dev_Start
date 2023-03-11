#INCLUDE 'TOTVS.CH'

/*/
    Andr� Lucas M. Santos

    Exerc�cio 1 - Lista: Pontos de Entrada
/*/

User Function ITEM()
    
    Local aParam    :=  PARAMIXB
    Local oObj      := ''
    Local cIdPonto  := ''
    Local cIdModel  := ''
    Local xRet      := .T.

    if aParam <> NIL

        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]
    
    endif

    if (INCLUI .OR. ALTERA) .AND. (cIdPonto == 'MODELCOMMITTTS')
        if ExistBlock('InclAltrCadast')
            ExecBlock('InclAltrCadast', .F., .F.)
        endif
    endif

Return xRet   