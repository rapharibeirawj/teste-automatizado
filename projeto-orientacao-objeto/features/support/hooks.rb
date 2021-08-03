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

After do |scenario|
    Dir.mkdir("data") unless Dir.exist?("data")
    sufix = ("error" if scenario.failed?) || "success"
    name = scenario.name.tr(" ", "_").downcase
    image_name = "data/img/#{sufix}-#{name}.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Clique aqui para ver a evidência!")
end
at_exit do
    time = Time.now
    data = time.strftime("%A: %d/%m/%Y") #=> "Data 04/09/2011"
    hora = time.strftime(" as %H:%M") #=> "08:56"
    # hora = time.strftime(" as %I:%M%p") #=> "08:56AM"
    ReportBuilder.configure do |config|
      config.input_path = "data/report.json"
      config.report_path = "data/cucumber_web_report"
      config.report_types = [:html]
      config.color = "red"
      config.report_tabs = %w[Overview Features Scenarios Errors]
      config.report_title = "Automação de Testes - Report"
      config.compress_images = true
      config.additional_info = { "Projeto" => "Digital Trade", "História" => "ADT-2106", "Data de execução" => "#{data}" "#{hora}", "QA" => "Renan Fernandes" }
    end
  ReportBuilder.build_report
end