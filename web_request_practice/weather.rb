require 'http'

while true
  system "clear"
  puts "Welcome to the Terminal Weather App"
  #get info from user
  puts "\nPlease type your city:"
  city = gets.chomp
  puts "Enter your preferred units F, C, or K:"
  unit_select = gets.chomp
  if unit_select == "F"
    units = 'imperial'
  elsif unit_select == "C"
    units = 'metric'
  elsif unit_select == "K"
    units = 'standard'
  end

  #get info from openweather
  response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")
  weather_data = response.parse(:json)
  weather_data
  temp_min =  weather_data['main']['temp_min']
  temp_max = weather_data['main']['temp_max']
  description = weather_data['weather'][0]['description']

  #display forcast
  puts "\n#{city.capitalize}: #{description} with a low of #{temp_min}#{unit_select} and high of #{temp_max}#{unit_select}"

  #ask user to continue or quit
  puts "\nWould you like to get a weather report from another city? (y/n)"
  continue_forcasting = gets.chomp.downcase
  if continue_forcasting == "n"
    break
  end
end
