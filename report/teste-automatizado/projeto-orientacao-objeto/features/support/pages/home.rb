class Home
    include Capybara::DSL
    include RSpec::Matchers

    def acessando_pagina_principal
        visit(EL["acessoAhome"])
    end
end