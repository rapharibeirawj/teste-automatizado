class Myaccount
    include Capybara::DSL
    include RSpec::Matchers

    def acessando_conta
        expect(page).to have_text "Welcome to your account. Here you can manage all of your personal information and orders."
    end
end