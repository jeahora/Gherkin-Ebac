            #language: pt

            Funcionalidade: quero finalizar
            minha compra fazendo meu cadastro de usuario

            Contexto:
            Dado que eu acesse a pagina do Ebac-Shop para finalizar minha compra

            Cenario: Campos de prenchimento obrigatório
            Quando inserir os meus dados
            E preencher todos campos em asteriscos
            Então deve aparecer a mensagem "cadastrado com sucesso"

            Cenário: Formato ivalido
            Quando inserir email
            E o formato nao seja permitido
            Então deve sinalizar com uma mensagem "erro de email"

            Esquema do Cenário: cadastro de usuários
            Quando eu prencher os <campos obrigatórios>
            E com todos meus <dados>
            Então deve permitir acesso ao sistema de finalizar compras

            Exemplos:
            | nome  | email                  |
            | jose  | jose.com.br            | "erro de email" |
            | maria | maria@gmailcom         | "finalizar cadastro" |
            | joão  | joão.celia@hotmail.com | "finalizar cadastro" |


