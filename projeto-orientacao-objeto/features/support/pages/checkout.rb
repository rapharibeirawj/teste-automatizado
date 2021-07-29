class Checkout
    include Capybara::DSL
    include RSpec::Matchers

    def prosseguir_checkout
        2.times{find(EL["botaoCheckout"]).click}
    end

    def prosseguir_checkout_logado
        find(EL["botaoCheckoutlogado"]).click
    end
    
    def preencher_checkbox
        find(EL["botaoCheckbox"]).click
    end

    def prosseguir_checkout_logado1
        find(EL["botaoCheckoutlogado1"]).click
    end

    def selecionar_pagamento
        find(EL["botaoMetodopagamento"]).click
    end

    def confirmar_pedido
        find('span', text: "I confirm my order").click
    end
end