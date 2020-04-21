class ForecastFacade
  attr_reader :id, :location, :forecast_results
  
  def initialize(location)
    @location = location 
    @id = nil
  end 

  def forecast_results
    data = weather_service.current_weather
    Forecast.new(data)
  end
  
  def location_results
    @results ||= google_service(location).get_lat_long
    Location.new(@results)
  end
  
  def google_service(location)
    GoogleService.new(@location)
  end
  
  def weather_service
    WeatherService.new(location_results.lat, location_results.lng)
  end
end
