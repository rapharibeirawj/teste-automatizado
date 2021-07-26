Dado('que o usuario acesse a pagina principall') do
    visit 'http://automationpractice.com/index.php'
  end

Quando('o usuario escolher um produto') do
    find("img[alt='Faded Short Sleeve T-shirts']").click
  end
  
  Quando('adicionar o produto ao carrinho') do
    find('.exclusive').click
  end
  
  Quando('prosseguir para o checkout') do
    find("a[title='Proceed to checkout']").click
    find("a[title='Proceed to checkout']").click
  end
  
  Quando('preencher as suas informações') do
    find("#email").set "rapharibeira@gmail.com"
    find("#passwd").set "12345678"
    find("#SubmitLogin").click
    find("button[name='processAddress']").click
    find('.checker').click
    find("button[name='processCarrier']").click
    find(".bankwire").click
  end
  
  Entao('ele deve finalizar a compra') do
    find('span', text: "I confirm my order").click
    expect(page).to have_text "Your order on My Store is complete."
  end
  