module Vehicles
    include HTTParty
    #urel base 
    base_uri 'https://desafioonline.webmotors.com.br'
    #opcoes do meu service
    format :json
end

#toda vez que eu chamar este modulo a url padrao dele sera '    base_uri 'https://desafioonline.webmotors.com.br/api/OnlineChallenge'
