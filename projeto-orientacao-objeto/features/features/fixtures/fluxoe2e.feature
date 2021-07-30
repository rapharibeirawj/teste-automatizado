#language:pt

Funcionalidade: Processo de compra
    Para que o usuario conclua o todo o processo de compras no site
    ele deve passar por todas as etapas da compra


    Contexto:
        Dado que o usuario acesse a pagina principall

@fluxoe2e
    Cenario: Processo de compra realizado com sucesso
        Quando o usuario escolher um produto 
        E adicionar o produto ao carrinho 
        E prosseguir para o checkout
        E preencher as suas informações
        Entao ele deve finalizar a compra