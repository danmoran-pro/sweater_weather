require 'rails_helper'

describe "Root URL", :vcr do
  it 'can see some JSON on root domain' do
    get '/'
    expect(response.body).to eq("Welcome to Sweather Weather")
    expect(response).to be_successful
  end
end