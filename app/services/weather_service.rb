class WeatherService
  
  def initialize(lat, lng)
    @lat = lat
    @lng = lng
  end

  def current_weather
    response ||= conn.get"/data/2.5/onecall?lat=#{@lat}&lon=#{@lng}"
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new "https://api.openweathermap.org" do |conn|
      conn.params['appid'] = ENV["OPEN_WEATHER_MAP_KEY"]
   end
  end
end
