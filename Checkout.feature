#language: pt

Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenário: cadastrado com todos os dados obrigatórios
Dado que o cliente acesse a tela de cadastro
Quando o cliente preencher todos os dados obrigatórios
E estiverem corretos
Então deve finalizar a compra

Cenário: campo e-mail com formato inválido
Dado que o cliente acesse a tela de cadastro para finalizar a compra 
Quando o cliente digitar o campo e-mail
E estiver com formato invalido "alex@hotmail"
Então deve exibir uma mensagem de "erro"

Cenário: cadastrar com campos vazios
Dado que o cliente acesse a tela de cadastrado
Quando o cliente não preencher os campos de cadastro
E cliclar em "finalizar compra"
Então deve exibir uma mensagem de "alerta"

Esquema do Cenário: validar cadastro do cliente
Quando o cliente digitar o <usuário> 
E <clicar>
Então deve exibir a <mensagem> 

Exemplos: 
|usuário|clicar|mensagem|
|"alex@gmail.com"|"finalizar compra"|"alerta"|