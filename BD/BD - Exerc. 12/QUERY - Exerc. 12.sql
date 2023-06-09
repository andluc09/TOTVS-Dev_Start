
SELECT * FROM SC6990

SELECT DISTINCT TOP 1 C6_PRODUTO, C6_DESCRI ,C6_PRCVEN FROM SC6990 AS SC6 -- Mais caro! --
WHERE SC6.D_E_L_E_T_ = ''
ORDER BY C6_PRCVEN DESC

SELECT DISTINCT TOP 1 C6_PRODUTO,C6_DESCRI ,C6_PRCVEN FROM SC6990 AS SC6 -- Mais barato! --
WHERE SC6.D_E_L_E_T_ = ''
ORDER BY C6_PRCVEN ASC

SELECT DISTINCT MAX(C6_PRCVEN) AS PRECO_MAIOR, MIN(C6_PRCVEN) AS PRECO_MENOR FROM SC6990 AS SC6
WHERE SC6.D_E_L_E_T_ = '' -- Maior valor e menor valor --