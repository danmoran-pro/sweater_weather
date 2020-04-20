class GoogleService

  def initialize(location)
    @location = location
  end 

  def get_lat_long
    response ||= conn.get("/json?address=#{@location}")
    binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end 

  private 
  def conn 
    Faraday.new('https://maps.googleapis.com/maps/api/geocode') do |f|
        f.params['key'] = ENV["GOGGLE_KEY"]
        f.adapter Faraday.default_adapter
    end
  end
end 