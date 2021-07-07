
  contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end

  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round
  
  
  def get_average_age_for_season(data, season)
   age = []
    data.each do |seasons, players|
    if season == seasons
    players.each do |details,value|
      age << details["age"].to_i
          end
        end
      end
  binding.pry
  
  
end

