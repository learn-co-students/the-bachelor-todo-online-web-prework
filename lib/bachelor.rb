def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    if info[:status] = "Winner"
      return info[:name.to_s].split(" ")[0]
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |title|
      if title["occupation"] == occupation
        return title["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |title|
      if title["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |title|
      if title["hometown"] == hometown
        return title["occupation"]
      end
    end
  end
end




def get_average_age_for_season(data, season)
  age_total = 0
  number_of_contestants = 0
  data[season].each do |contestants|
    contestants.each do |key, value|
      if key == "age"
        number_of_contestants += 1
        age_total = age_total + value.to_f
      end
    end
  end
  avg_age = (age_total/number_of_contestants).round
  return avg_age
end
