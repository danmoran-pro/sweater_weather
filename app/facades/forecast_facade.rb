class ForecastFacade
  attr_reader :id, :location

  def initialize(location)
    @location = location 
    @id = nil

    json = WeatherService.current_weather(@destination.name)
    @weather = Weather.new(json)

  end 
  
  def forecast_results
    @weather_service ||= weather_service(location_results.lat, location_results.lng).get_json_weather
  end

  def location_results
    @results ||= google_service(location).get_lat_long
    Location.new(@results)
  end

  def google_service(location)
    GoogleService.new(@location)
  end

  def weather_service(location)
    WeatherService.new(location_results.lat, location_results.lng)
  end
end
