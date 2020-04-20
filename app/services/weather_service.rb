class WeatherService
  
  def initialize(lat, lng)
    @lat = lat
    @lng = lng
  end

  def current_weather(lat, lng)
    response ||= conn.get"/onecall?lat=#{@lat}&lon=#{@lng}")
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new "https://api.openweathermap.org/data/2.5" do |conn|
      conn.params['appid'] = ENV['OPEN_WEATHER_MAP_KEY']
    end
  end
end
