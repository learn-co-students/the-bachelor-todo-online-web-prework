require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, players|
    if season == seasons
      
    players.each do |details,value|
      if details["status"] == "Winner"
       # binding.pry
      return details["name"].split(" ")[0]
          end
        end
      end
    end
  end

def get_contestant_name(data, occupation)
  data.each do |seasons, players|
    players.each do |details,value|
      if details["occupation"] == occupation
       # binding.pry
      return details["name"]
          end
        end
      end
    
  
end

def count_contestants_by_hometown(data, hometown)
 count = 0
   data.each do |seasons, players|
    players.each do |details,value|
      if details["hometown"] == hometown
       # binding.pry
      count = count + 1
          end
        end
      end
    return count
end

def get_occupation(data, hometown)
  data.each do |seasons, players|
    players.each do |details,value|
      if details["hometown"] == hometown
       # binding.pry
      return details["occupation"]
          end
        end
      end
    
end

def get_average_age_for_season(data, season)
  contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end

  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round
  
end
