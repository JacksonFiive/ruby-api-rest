 
Dado("que eu tenha um CEP VÁLIDO") do |table|
    @cep = (table.rows_hash['cep'])
  end

Quando('envio uma requisição para consulta de endereço') do   

   @result = Cep.new.find_by_id(@cep) 
   @result_parsed = @result.parsed_response 
   

end
      
Então('posso visualizar o código do IBGE') do
   
     expect(@result.code). to eql 200
     @result_parsed = @result.parsed_response
     puts "\n #IBGE: #{@result_parsed['ibge']}"
 
  end         



 Então('a API deve retornar um erro') do
    expect(@result.code). to eql 400
  end

