require 'rubygems'
Bundler.require :default

# setup credentials
ForecastIO.configure do |configuration|
  configuration.api_key = ENV['FORECAST_IO_KEY']
end

lat = '37.7749295' # San Francisco
lng = '-122.4194155'
time = Time.now.to_i

x = ForecastIO.forecast(lat, lng, time: time).currently
puts "Current SF conditions: #{x.summary}, #{x.temperature.round} degrees F"
