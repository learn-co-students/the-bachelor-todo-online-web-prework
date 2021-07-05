require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_array|
    return contestant_array["name"].split(" ").first if contestant_array["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  
  data.each do |seasons, info|
    info.each do |array|
      return array["name"] if array["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  
  data.each do |seasons, info|
    info.each do |array|
      if array["hometown"] == hometown 
        hometown_count += 1
      end
    end
  end
  
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |seasons, info|
    info.each do |array|
      return array["occupation"] if array["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0.0


  data[season].each do |data|
    age_sum += data["age"].to_f
  end
  (age_sum / data[season].size).round
  
end
