def get_first_name_of_season_winner(data, season_number)
  # code here
  winner_array = []
  winner_string = ""
  data[season_number].each do |info|
    if info["status"] == "Winner"
      winner_string = info["name"]
    end
  end
  winner_array = winner_string.split
  winner_array[0]
end

def get_contestant_name(data, occupation)
  # code here
  occupation_name_array = []
  data.each do |season, info|
    info.each do |contestant_info|
      if contestant_info["occupation"] == occupation 
        occupation_name_array << contestant_info["name"]
      end
    end
  end
  occupation_name_array[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  data.each do |season, info|
    info.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        count += 1 
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  contestant_count = 0 
  total_age = 0 
  data[season].each do |info|
    age = info["age"].to_i 
    total_age += age 
    contestant_count += 1 
  end
  avg_age = (total_age.to_f / contestant_count)
  avg_age.round
end
