class Forecast 
  attr_reader :current_temp, :current_feels_like, :current_feels_like, :current_humidity, :current_visibility, :current_uv, :current_sunrise, :current_description

  def initialize(data)
    @data = data
    @current_temp = @data[:current][:temp]
    @current_feels_like = @data[:current][:feels_like]
    @current_humidity = @data[:current][:humidity]
    @current_visibility = @data[:current][:visibility]
    @current_uv =  @data[:current][:uvi]
    @current_sunrise = @data[:current][:sunrise]
    @current_sunset = @data[:current][:sunset]
    @current_description = @data[:current][:weather].first[:main]
  end 
end 