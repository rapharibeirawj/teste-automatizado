class Login
include Capybara::DSL
include RSpec::Matchers


    def acessando_login
        find(EL["botaoLogin"]).click
    end

    def preencher_campos_login
        find(EL["campoEmail"]).set "rapharibeira@gmail.com"
        find(EL["campoSenha"]).set "12345678"
        find(EL["botaoAutenticacao"]).click
    end

    def senha_incorreta
        find(EL["campoEmail"]).set "rapharibeira@gmail.com"
        find(EL["campoSenha"]).set "12345677"
        find(EL["botaoAutenticacao"]).click
    end

    def email_incorreto
        find(EL["campoEmail"]).set Faker::Internet.email
        find(EL["campoSenha"]).set "12345677"
        find(EL["botaoAutenticacao"]).click
    end

    def erro_autenticacao
        expect(page).to have_text "Authentication failed."
    end
end