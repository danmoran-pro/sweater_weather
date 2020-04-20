class ForecastFacade
  attr_reader :id, :location

  def initialize(location)
    @location = location 
    @id = nil
  end 

  def location_results
    @results ||= google_service(location).get_lat_long
    Location.new(@results)
  end

  def google_service(location)
    GoogleService.new(@location)
  end
end
