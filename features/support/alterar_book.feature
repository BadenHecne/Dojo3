#language:pt
#utf-8

Funcionalidade: alteração do book 
	Eu como sistema 
	Quero fazer uma alteração book
	Para verificar se esta sendo alterado com sucesso

	@alterar_book
	Cenário: alteração do book
		Dado que eu tenho acesso ao webservice
		Quando eu fizer a alteração do book
		Então valido o codigo de resposta