
class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast
  attributes :id, :location_results, :forecast_results
end