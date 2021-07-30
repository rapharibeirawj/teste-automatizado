  Dado('que o usuario acesse a pagina principall') do
    @Home.acessando_pagina_principal
  end

  Quando('o usuario escolher um produto') do
    @Produto.selecionar_produto
  end
  
  Quando('adicionar o produto ao carrinho') do
    @Produto.adicionar_ao_carrinho
  end
  
  Quando('prosseguir para o checkout') do
    @Checkout.prosseguir_checkout
  end
  
  Quando('preencher as suas informações') do
    @Login.preencher_campos_login
    @Checkout.prosseguir_checkout_logado
    @Checkout.preencher_checkbox
    @Checkout.prosseguir_checkout_logado1
    @Checkout.selecionar_pagamento
  end
  
  Entao('ele deve finalizar a compra') do
    @Checkout.confirmar_pedido
    @Pedido.pedido_finalizado
  end
  