#read weather.dat and import into script
weather_data = File.open("weather.dat", "r").readlines

#parse data of weather.dat to extract a temp difference for each day. Array of hashes structure.
daily_temps = []
weather_data.map! {|line| line.split(" ")}
weather_data.each do |line|
  unless line[0] == "Dy" || line[0] == nil || line[0] == "mo" #ignore header, monthly sum, blank line
    daily_temps << {day: line[0], temp_spread: (line[1].to_i - line[2].to_i)}
  end
end

daily_temps.sort_by! {|day| day[:temp_spread]}
lowest_spread = daily_temps[0]

#output day number
puts "Day #{lowest_spread[:day]} has the lowest temperature spread of #{lowest_spread[:temp_spread]} degrees. "