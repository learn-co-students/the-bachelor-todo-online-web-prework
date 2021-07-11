def get_first_name_of_season_winner(data, season)
  season_data = data.fetch(season)
  season_data.each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end

end

def get_contestant_name(data, occupation)
  data.each do |season,season_array|
    season_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season,season_array|
    season_array.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  data.each do |season,season_array|
    season_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  season_data = data.fetch(season)
  num_of_contestants = season_data.length
  season_data.each do |contestant|
    total_age += contestant["age"].to_f
  end
  return (total_age/num_of_contestants).round
end
