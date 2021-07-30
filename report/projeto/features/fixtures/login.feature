#language:pt 

Funcionalidade: Login
    Para que o usuario possa ter acesso a todas as funcionalidades do sistema
    Devera ser efetuado o login

    Contexto: 
        Dado que o usuario acesse a pagina principal
        Quando o usuario acessar a pagina de login
    
    @logincomsucesso
    Cenario: Usuario deve ser autorizado
        Quando o usuario preencher campos de login e senha
        Então deve ser redirecionado a pagina de my account

    @senhaincorreta
    Cenario: Senha errada
        Quando o usuario fizer login com “rapharibeira@gmail.com” e senha incorreta
        Então deve ser exibido uma mensagem de erro de senha

    @usuarionaoregistrado
    Cenario: Usuário não registrado
       Quando o usuario fizer login com nome e senha incorretas
       Então deve ser exibido uma mensagem de erro 

    
