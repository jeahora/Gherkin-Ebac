            #language: pt

            Funcionalidade: como cliente quero ter
            acesso para ver os meus pedidos

            Contexto: 
            Dado que eu acesse a pagina de Autenticação do Ebac-Shop

            Cenário: Autenticação Valida
            Quando eu digitar usuario
            E a senha correta
            Então deve exdibir a tela de checkout

            Cenário: Usuario ou senha inválida
            Quando eu digitar usuário
            E senha um deles estiver inválida
            Então deve exibir uma mensagem de alerta "usuário ou senha inválida "

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> bem vinda a tela de checkout

            Exemplos:
            | Usuario         | senha  | mensagem   |
            | maria@gmail.com | 123    | "checkout" |
            | jose@gmail.com  | 123444 | "checkout" |
            | joão@gmail.com  | 123456 | "checkout" |


