class Location

  attr_reader :lat, :lng
  
  def initialize(data)
    @lat = data[:results][0][:geometry][:location][:lat]
    @lng = data[:results][0][:geometry][:location][:lng]
    @city = data[:results][0][:address_components][0][:long_name]
    @state = data[:results][0][:address_components][2][:long_name]
    @country = data[:results][0][:address_components][3][:long_name]
  end 
end 