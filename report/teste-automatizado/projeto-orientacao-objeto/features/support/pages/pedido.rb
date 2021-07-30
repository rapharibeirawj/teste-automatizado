class Pedido
    include Capybara::DSL
    include RSpec::Matchers

    def pedido_finalizado
        expect(page).to have_text "Your order on My Store is complete."
    end
end