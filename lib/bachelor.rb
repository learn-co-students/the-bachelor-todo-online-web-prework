def get_first_name_of_season_winner(data, season)
  data[season].each do |element|
    if element["status"] == "Winner"
      return element["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |details_hash|
      if details_hash.has_value?(occupation)
        return details_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_array|
    contestant_array.each do |details_hash|
      if details_hash.has_value?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |details_hash|
      if details_hash.has_value?(hometown)
        return details_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  data[season].each do |details_hash|
    average_age += details_hash["age"].to_f
  end
  average_age = average_age / data[season].length
  return average_age.round
end
