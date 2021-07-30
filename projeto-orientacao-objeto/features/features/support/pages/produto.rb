class Produto
    include Capybara::DSL
    include RSpec::Matchers

    def selecionar_produto
        find("img[alt='Faded Short Sleeve T-shirts']").click
    end

    def adicionar_ao_carrinho
        find(EL["botaoCarrinho"]).click
    end
end