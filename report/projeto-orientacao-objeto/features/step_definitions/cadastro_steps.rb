Dado('que o usuario esta na pagina inicial') do
    visit 'http://automationpractice.com/index.php'
  end

Dado('o usuario acessa a pagina de autenticacao') do
    find(".login").click
  end
  
  Dado('que o usuario informe um email valido') do
    find("#email_create").set Faker::Internet.email
  end
  
  Quando('clicar no botao create an account') do
    find("#SubmitCreate").click
  end
  
  Quando('o usuario preenche o formulario completo') do
    find("#id_gender1").choose
    find('#customer_firstname').set Faker::Name.name
    find('#customer_lastname').set Faker::Name.name
    find('#passwd').set "12345678"
    find("select[name='days'] option[value='3']").click
    find("select[name='months'] option[value='3']").click
    find("select[name='months'] option[value='3']").click
    find("select[name='years'] option[value='2000']").click
    find("#firstname").set "rua jair venancio"
    find("#lastname").set "de paiva"
    find("#address1").set Faker::Address.street_address
    find("#city").set "Sao Paulo"
    find("select[name='id_state'] option[value='6']").click
    find("#postcode").set '12345'
    find("#phone_mobile").set Faker::PhoneNumber.cell_phone
    find("#alias").set Faker::Address.city
    sleep 5
  end
  
  Quando('clicar no botao register') do
    find("#submitAccount").click
  end
  
  Entao('o usuario e redirecionado para a pagina de minha conta') do
    @Myaccount.acessando_contas
  end

  Quando('o usuario nao preencher nenhum dos campos') do
    find('#customer_firstname').set ''
  end
  
  Entao('devera ser exibida a mensagem com os erros') do
    expect(page).to have_text "There are 8 errors"
  end

  Dado('que o usuario informe um email invalido') do
    find("#email_create").set "rapha#ribeira%"
  end
  
  Entao('deve ser exibida uma mensagem de erro') do
    expect(page).to have_text "Invalid email address."
    sleep 5
  end

  Dado('que o usuario informe um email repetido') do
    find("#email_create").set "rapharibeira@gmail.com"
  end
  
  Entao('deve ser exibida uma mensagem de email ja cadastrado') do
    expect(page).to have_text "An account using this email address has already been registered. Please enter a valid password or request a new one."
    sleep 5
  end