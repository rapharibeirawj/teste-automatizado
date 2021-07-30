#language:pt

Funcionalidade: Cadastro
    Para que o usuario consiga acessar o sistema
    Devera ser realizado um cadastro 

Contexto:
    Dado que o usuario esta na pagina inicial
    E o usuario acessa a pagina de autenticacao

@cadastrovalido
Cenario: Cadastro valido
    Dado que o usuario informe um email valido
    E clicar no botao create an account
    Quando o usuario preenche o formulario completo
    E clicar no botao register
    Entao o usuario e redirecionado para a pagina de minha conta

@cadastroinvalido
Cenario: Cadastro invalido
    Dado que o usuario informe um email valido
    E clicar no botao create an account
    Quando o usuario nao preencher nenhum dos campos
    E clicar no botao register
    Entao devera ser exibida a mensagem com os erros


@emailinvalido
Cenario: Email invalido
    Dado que o usuario informe um email invalido
    Quando clicar no botao create an account
    Entao deve ser exibida uma mensagem de erro

@emailrepetido
Cenario: Email repetido
    Dado que o usuario informe um email repetido
    Quando clicar no botao create an account
    Entao deve ser exibida uma mensagem de email ja cadastrado
