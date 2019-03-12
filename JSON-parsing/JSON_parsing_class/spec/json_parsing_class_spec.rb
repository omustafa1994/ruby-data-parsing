describe 'Test the exchange rates' do

    before(:all) do 
        @exchange_rates = ParseJson.new('json_exchange_rates.json')
    end

    it 'should be a hash' do
        expect(@exchange_rates.json_data).to be_kind_of(Hash)
    end

    it 'should contain base as EUR' do
        expect(@exchange_rates.get_base).to eq "EUR"
    end

    it 'we should have a date string' do
        expect(@exchange_rates.get_date).to be_kind_of(String)
    end

    it "should countain 31 rates" do
        
     end
     
    #  it "should all rates should be Floats" do
    #     pending
    #  end

end