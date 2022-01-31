
describe "Get List" do
    it "Listando todas as Versões" do
       
        @version = Vehicles.get('/api/OnlineChallenge/Version?ModelID=4')
    
            # Verificando o status code da aplicação
            expect(@version.code).to eql 200
           
        end 

    it "Testando o Contrato das Versões" do
        @version = Vehicles.get('/api/OnlineChallenge/Version?ModelID=2')
        
        @version.parsed_response.each do |item, |
            expect(item["ModelID"]).to be_a_kind_of(Integer)
            expect(item["ID"]).to be_a_kind_of(Integer)
            expect(item["Name"]).to be_a_kind_of(String)
        end
     end
end