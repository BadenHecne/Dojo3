#language:pt
#utf-8

Funcionalidade: leitura do book 
	Eu como sistema
	Quero realizar a leitura de um book
	Para validar se o livro esta disponivel

	@leitura_book
	Cenário: leitura do book
		Dado que eu tenho acesso ao webservice
		Quando eu realizar a leitura do book
		Então valido que o livro foi lido com sucesso
		 