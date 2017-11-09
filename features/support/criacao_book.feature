#language:pt
#utf-8

Funcionalidade: criação de um book 
	Eu como sistema 
	Quero fazer a requisição de criação de um book
	Para verificar se esta sendo criado com sucesso

	@criar_book
	Cenário: criação de um book
		Dado que eu tenho acesso ao webservice
		Quando eu fizer a requisição de criação de um book
		Então valido o codigo de resposta para a criação esperado
		 