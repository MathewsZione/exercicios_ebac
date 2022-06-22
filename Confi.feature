#language: pt 

Funcionalidade: Configurar produtos 
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleções de cor, tamanho e quantidade valida
Dado que o cliente acesse a EBAC SHOP
Quando selecionar cor, tamanho e quantidade
E clicar em "adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho de compras

Cenário: Seleções de cor, tamanho e quantidade invalida
Dado que o cliente acesse a EBAC SHOP
Quando não selecionar cor, tamanho ou quantidade
E clicar em "adicionar ao carrinho"
Então devera exibir uma mensagem de "selecionar cor tamanho ou quantidade"

Cenário: Permitir apenas 10 produtos por venda valida
Dado que o cliente acesse a EBAC SHOP
Quando selecionar um produto
E a quantidade for de 10 produtos 
Então devera exibir uma mensagem de "sucesso"

Cenário: Permitir apenas 10 produtos por venda invalida
Dado que o cliente acesse a EBAC SHOP
Quando selecionar um produto
E a quantidade for maior que 10 produtos 
Então devera exibir uma mensagem de "limite de apenas 10 produtos por venda"

Cenário: Botão “limpar” deve voltar ao estado original
Dado que o cliente acesse a EBAC SHOP
Quando preencher todas as configurações de cor, tamanho e quantidade
E clicar no botão "limpar" 
Então as "opções devem voltar ao normal"

Esquema do Cenário: configurar múltiplos produtos
Quando o cliente <seleciona> "cor", "tamanho" ou "quantidade"
E <clicar> em "adicionar ao carrinho" 
Então deve ser exibida uma <mensagem> de "sucesso"

Exemplos: 
|selecionar|clicar|mensagem|
|"cor"|"adicionar ao carrinho"|"sucesso"|
|"tamanho"|"adicionar ao carrinho"|"sucesso"|
|"quantidade"|"adicionar ao carrinho"|"limite de apenas 10 produtos por venda"|











