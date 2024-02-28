            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal da Ebac
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a pagina de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxxx.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "usuário inexistente"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "xxxxxxyyyy"
            Então deve exibir uma mensagem de alerta "usuário ou senha iválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a >mensagem> de sucesso

            Exemplos:
            | Usuario            | senha       | mensagem    |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            |"maria@ebac.com.br" | "teste@123" | "Olá Maria!"|
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |