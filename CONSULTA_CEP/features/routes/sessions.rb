require 'httparty'

class Cep 
    include HTTParty
    base_uri "https://viacep.com.br/ws"

    def find_by_id(data)
        return self.class.get ('/' "#{data}" '/json/')
        
    end


     

end