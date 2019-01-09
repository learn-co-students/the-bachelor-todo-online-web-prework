def get_first_name_of_season_winner(data, season)
  season_winner = ""
  winner_array = []
  data.each do |season_number, contestant_array|
    if season_number == season 
      contestant_array.each do |contestant_hash|
        if contestant_hash["status"] == "Winner"
          season_winner = contestant_hash["name"]
          winner_array = season_winner.split
        end
      end
    end
  end
  winner_array[0]
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0  
  data.each do |season_number, contestant_array| 
      contestant_array.each do |contestant_hash|
        if contestant_hash["hometown"] == hometown 
          counter += 1
        end
      end 
  end 
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  age_total = 0 
  num_of_contestants = 0 
  data.each do |season_number, contestant_array|
    if season_number == season 
      contestant_array.each do |contestant_hash|
        age_total += contestant_hash["age"].to_f 
        num_of_contestants += 1 
      end
    end
  end
  (age_total/ num_of_contestants).round  
end
