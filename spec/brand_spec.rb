describe "Get Marca" do
    it "Listando todas as Marcas" do
       
        @brand = Vehicles.get('/api/OnlineChallenge/Make')

        # Verificando o status code da aplicação
        expect(@brand.code).to eql 200
        # Verificando o Json da resposta 
        expect(@brand.parsed_response).to eql [{"ID"=>1, "Name"=>"Chevrolet"}, {"ID"=>2, "Name"=>"Honda"}, {"ID"=>3, "Name"=>"Ford"}]
        
    end 

    it "Testando o contrato das Marcas" do
        @brand = Vehicles.get('/api/OnlineChallenge/Make')

        @brand.parsed_response.each do |item, |
            expect(item["ID"]).to be_a_kind_of(Integer)
            expect(item["Name"]).to be_a_kind_of(String)
          end
    end       
end
