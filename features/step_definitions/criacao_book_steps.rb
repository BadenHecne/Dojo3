Dado("que eu tenho acesso ao webservice") do
  
end

Quando("eu fizer a requisição de criação de um book") do
  @criar_book = HTTParty.post("http://fakerestapi.azurewebsites.net/api/Books",
  				:body => { 'Title' => "Livro Dom Casmurro",
  						  'Description' => "teste@inmetrics.com.br",
  						  'PageCount' => 256,
  						  'Excerpt' => "Sumario resumido",
  						  'PublishDate' => "2017-06-15T13:00:00.549505+00:00"}.to_json,
  				:headers => {'Content-type' => 'application/json'})
  puts @criar_book.code
  puts @criar_book.body
end

Então("valido o codigo de resposta para a criação esperado") do
  expect(@criar_book.code).to eq 200
end