
describe "Get List" do
    it "Listando todas os Modelos" do
       
        @model = Vehicles.get('/api/OnlineChallenge/Model?MakeID=1')
    
            # Verificando o status code da aplicação
            expect(@model.code).to eql 200

            #puts @model
            # Verificando o Json da resposta 
           expect(@model.parsed_response).to eql [{"MakeID"=>1, "ID"=>1, "Name"=>"Agile"}, {"MakeID"=>1, "ID"=>2, "Name"=>"Astra"}, {"MakeID"=>1, "ID"=>3, "Name"=>"Onix"}]
            
        end 

    it "Testando o Contrato dos Modelos" do
        @model = Vehicles.get('/api/OnlineChallenge/Model?MakeID=1')
        
        @model.parsed_response.each do |item, |
            expect(item["MakeID"]).to be_a_kind_of(Integer)
            expect(item["ID"]).to be_a_kind_of(Integer)
            expect(item["Name"]).to be_a_kind_of(String)
        end
     end
end