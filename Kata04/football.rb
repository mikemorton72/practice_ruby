#read football.dat and import into script
football_data = File.open("football.dat", "r").readlines

#parse data of weather.dat to extract a temp difference for each day. Array of hashes structure.
team_data = []
football_data.map! {|line| line.split(" ")}
football_data.each do |line|
  if line.length == 10
    team_data << {team: line[1], point_spread: line[6].to_i - line[7].to_i}
  end
end

team_data.sort_by! {|team| team[:point_spread]}
lowest_spread = team_data[0]
puts "#{lowest_spread[:team]} had the lowest for/against point spread of #{lowest_spread[:point_spread]}."