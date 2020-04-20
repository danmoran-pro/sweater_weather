require 'rails_helper'

RSpec.describe "Api::V1::Forecasts", :vcr do
  describe "GET /forecast" do
    before :each do 
      @destination_1 = create(:destination, location: "denver, co")
    end 

    it "returns http success" do

      
      get "/api/v1/forecast?location=(#{@destination_1.location})"

      expect(response).to be_successful

      resp = JSON.parse(response.body, symbolize_names: true)['data']['attributes']
  
    end

    # it 'returns geolocation information when get /api/v1/forecast?location=city,state' do

    #   get "/api/v1/forecast?location=(#{@destination_1.location})"
      
    #   expect(response).to be_successful

    #   resp = JSON.parse(response.body, symbolize_names: true)

    #   expect(resp[:data][:attributes]).to include(:lat)
    #   expect(resp[:data][:attributes]).to include(:lon)
    #   expect(resp[:data][:attributes]).to include(:description)
    #   expect(resp[:data][:attributes]).to include(:image_url)
    # end

    # it "it can return forecast based on location" do
      
      
    # end 
  end
end

