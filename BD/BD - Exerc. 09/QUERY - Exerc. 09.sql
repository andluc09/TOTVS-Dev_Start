
SELECT * FROM SC6990

SELECT * FROM SC5990

SELECT DISTINCT C5_NUM, C6_PRODUTO FROM SC5990 AS SC5
INNER JOIN SC6990 AS SC6
ON SC5.C5_LOJACLI = SC6.C6_LOJA
AND SC5.D_E_L_E_T_ = '' AND SC6.D_E_L_E_T_ = ''
WHERE SC6.C6_PRODUTO = '000001' -- Qual produto voc� deseja buscar? --