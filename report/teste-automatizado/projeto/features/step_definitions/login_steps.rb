  Dado('que o usuario acesse a pagina principal') do
    visit 'http://automationpractice.com/index.php'
  end
  
  Quando('o usuario acessar a pagina de login') do
    find(".login").click
  end
  
  Quando('o usuario preencher campos de login e senha') do 
    find("#email").set "rapharibeira@gmail.com"
    find("#passwd").set "12345678"
    find("#SubmitLogin").click
  end

  Então('deve ser redirecionado a pagina de my account') do
    expect(page).to have_text "Welcome to your account. Here you can manage all of your personal information and orders."
    sleep 5
  end
  
  Quando('o usuario fizer login com “rapharibeira@gmail.com” e senha incorreta') do
    find("#email").set "rapharibeira@gmail.com"
    find("#passwd").set "12345677"
    find("#SubmitLogin").click
  end
  
  Então('deve ser exibido uma mensagem de erro de senha') do
    expect(page).to have_text "Authentication failed."
    sleep 5
  end

  Quando('o usuario fizer login com nome e senha incorretas') do
    find("#email").set Faker::Internet.email
    find("#passwd").set "12345677"
    find("#SubmitLogin").click
  end
  
  Então('deve ser exibido uma mensagem de erro') do
    expect(page).to have_text "Authentication failed."
    sleep 5
  end

  