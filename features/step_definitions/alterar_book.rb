Quando("eu fizer a alteração do book") do
  @alterar_book = HTTParty.put("http://fakerestapi.azurewebsites.net/api/Books/200",
  				:body => { 'Title' => "Livro Dom Casmurro 2",
  						  'Description' => "teste@inmetrics.com.br",
  						  'PageCount' => 300,
  						  'Excerpt' => "Sumario resumido 2",
  						  'PublishDate' => "2017-10-15T13:00:00.549505+00:00"}.to_json,
  				:headers => {'Content-type' => 'application/json'})
  puts @alterar_book.code
  puts @alterar_book.body
end

Então("valido o codigo de resposta") do
  case @alterar_book.code
  when 200 
  	puts "Alterado com sucesso"
  when 404
  	puts "Erro na alteração, livro não encontrado"
  else 
  	puts "Codigo não encontrado"
 end
end
