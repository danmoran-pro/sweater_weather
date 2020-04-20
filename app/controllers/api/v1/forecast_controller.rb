class Api::V1::ForecastController < ApplicationController

  def index
    forecast_facade = Forecastacade.new(params[:location])
    render json: ForecastSerializer.new(forecast_facade)
  end
end 
  