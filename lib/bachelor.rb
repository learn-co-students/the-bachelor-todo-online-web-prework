def get_first_name_of_season_winner(data, season)
  data.each do |season_name, attributes|
    if season_name == season
      attributes.each do |x|
        if x["status"] == "Winner"
          winner = x["name"]
          return winner.split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, attributes|
    attributes.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, attributes|
    attributes.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, attributes|
    attributes.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(_data, _season)
  age_total = 0
  count = 0
  _data.each do |season, attributes|
    if season == _season
      attributes.each do |contestant_data|
        age_total += contestant_data["age"].to_f
        count += 1
      end
    end
  end
  average = age_total / count
  return average.round
end
