require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |all_contestant_info|
    
      if all_contestant_info["status"].downcase == "winner"
        return all_contestant_info["name"].split(" ").first
      end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_info|
    contestant_info.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_info|
    contestant_info.each do |contestant_data|
      if contestant_data["hometown"] == hometown
      count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_info|
    contestant_info.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0 
  num_of_contestants = 0
  data[season].each do |contestant_hash| 
    total_age += (contestant_hash["age"]).to_i
  num_of_contestants += 1
  end
  (total_age/num_of_contestants.to_f).round(0)
end
