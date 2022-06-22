#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Login valido
Dado que o cliente acesse a página de autentificação do portal ebac
Quando o cliente digitar "matheus@gmail.com"
E a senha "12345"
Então deve ser direcionado para tela de Checkout

Cenário: Login invalido
Dado que o cliente acesse a página de autentificação do portal ebac
Quando o cliente digitar "matheus@gmail.com"
E a senha "1345"
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Esquema do Cenário: autenticar multiplos usuarios
Quando o cliente digitar o <usuário> 
E a <senha>
Então deve exibir a <mensagem> de Usuário ou senha inválidos

Exemplos: 
|usuario|senha|mensagem|
