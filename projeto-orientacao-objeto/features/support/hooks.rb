Before do
    #Capybara.current_session.driver.browser.manage.delete_all_cookies
    #window = Capybara.current_session.current_window
    #window.resize_to(1200, 1200)
    #window.maximize
    @Login = Login.new
    @Myaccount = Myaccount.new
    @Produto = Produto.new
    @Checkout = Checkout.new
    @Pedido = Pedido.new
    @Home = Home.new
end

After('@cadastrovalido') do
    find(".logout").click
end

After('@cadastroinvalido') do
    find(".login").click
end
