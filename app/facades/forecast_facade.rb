class ForecastFacade
  attr_reader :id, :location, :forecast_results
  
  def initialize(location)
    @location = location 
    @id = nil
  end 

  def forecast_results
    binding.pry
    Forecast.new(@loc)
  end
  
  def location_results
    @results ||= google_service(location).get_lat_long
    Location.new(@results)
  end
  
  def google_service(location)
    GoogleService.new(@location)
  end
  
  def weather_service(location)
    binding.pry
    WeatherService.new(@location.lat, @location.lng)
  end
end
