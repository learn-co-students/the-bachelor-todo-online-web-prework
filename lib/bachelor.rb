def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |season_info|
   if season_info.has_value?("Winner")
     winner_name = season_info["name"].split(" ")
     return winner_name[0]
   end 
  end 
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_info|
      if contestant_info.has_value?(occupation)
        return contestant_info["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_info|
      if contestant_info.has_value?(hometown)
        hometown_counter += 1
      end 
    end
  end 
    return hometown_counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_info|
      if contestant_info.has_value?(hometown)
        return contestant_info["occupation"]
      end 
    end
  end 
end

def get_average_age_for_season(data, season)
  # code here
   total_age = 0
   people_counter = 0
   
   data[season].each do |contestants_array|
     total_age += contestants_array["age"].to_f
     people_counter += 1.0 
   end 

  average_age = (total_age / people_counter).round 
   
   return average_age
end

