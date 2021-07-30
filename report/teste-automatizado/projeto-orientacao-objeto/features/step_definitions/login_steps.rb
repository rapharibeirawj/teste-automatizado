  Dado('que o usuario acesse a pagina principal') do
    @Home.acessando_pagina_principal
  end
  
  Quando('o usuario acessar a pagina de login') do
    @Login.acessando_login
  end
  
  Quando('o usuario preencher campos de login e senha') do 
    @Login.preencher_campos_login
  end

  Então('deve ser redirecionado a pagina de my account') do
    @Myaccount.acessando_conta
  end
  
  Quando('o usuario fizer login com “rapharibeira@gmail.com” e senha incorreta') do
    @Login.senha_incorreta
  end
  
  Então('deve ser exibido uma mensagem de erro de senha') do
    @Login.erro_autenticacao
  end

  Quando('o usuario fizer login com nome e senha incorretas') do
    @Login.email_incorreto
  end
  
  Então('deve ser exibido uma mensagem de erro') do
    @Login.erro_autenticacao
  end

  