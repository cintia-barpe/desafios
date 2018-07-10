#language: pt

Funcionalidade: Teste de API
Como uma aplicação da Marvel
Desejo buscar por personagem existente
Para listá-lo em uma determinada tela

@service
Cenario: GET de API
	Quando que eu tenha acesso a url da Marvel
	Então a api me retorna pesquisa status 200


