Quando("eu realizar a leitura do book") do
  @leitura_book = HTTParty.get("http://fakerestapi.azurewebsites.net/api/Books/200")
  puts @leitura_book.code
  puts @leitura_book.body
end

Então("valido que o livro foi lido com sucesso") do
 case @leitura_book.code
  when 200 
  	puts "Lido com sucesso"
  when 404
  	puts "Erro na leitura, livro não encontrado"
  else 
  	puts "Codigo não encontrado"
 end

end