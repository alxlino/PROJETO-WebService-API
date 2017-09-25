#encoding: utf-8

Quando(/^envio uma solicitação GET para o serviço "([^"]*)"$/) do |api|     
    @result = HTTParty.get(api)
end                                                                          
                                                                             
Quando(/^solicito apenas a exibição do campo "([^"]*)"$/) do |title|          
    @data = @result.parsed_response["results"]
    @data.each do |item|
        puts item[title]
    end
end                                                                          

Quando(/^os filmes são do diretor "([^"]*)" e do produtor "([^"]*)"$/) do |director, producer|
    @data = @result.parsed_response["results"]
    
    @data.each do |item|
        
        if item["director"] == director
            str = item["producer"]
            str = str.split(",")
            str.each do |nome|
                if nome.strip == producer
                    puts item["title"]
                end
            end
        end     
    end    
end
                                                                             
Então(/^o código de resposta deve ser igual a "([^"]*)"$/) do |statusCode|         
  expect(@result.response.code).to eql statusCode 
end                                                                          