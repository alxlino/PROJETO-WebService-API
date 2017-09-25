#encoding: utf-8

Quando(/^envio uma solicitação GET para o serviço "([^"]*)"$/) do |api|     
    @result = HTTParty.get(api)
end                                                                          
                                                                             
Quando(/^solicito apenas a exibição do campo "([^"]*)"$/) do |title|          
    @data = @result.parsed_response["results"]
    
    @data.each do |item|
        puts item["title"]
    end
end                                                                          
                                                                             
Então(/^o código de resposta deve ser igual a "([^"]*)"$/) do |statusCode|         
  expect(@result.response.code).to eql statusCode 
end                                                                          