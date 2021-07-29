class ApplicationController < ActionController::Base
  def set_coordinates
    if @location.city
      city = @location.city
      location_url = "https://api.openweathermap.org/geo/1.0/direct?q="+ city  +'&appid=' + Rails.application.credentials.openweather[:api_key]
      location_uri = URI(location_url)
      location_response = Net::HTTP.get(location_uri)
      location_output = JSON.parse(location_response)
      @location.lat = location_output[0]['lat'].to_s
      @location.lon = location_output[0]['lon'].to_s
    end
  end
end
