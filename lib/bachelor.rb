def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    if array["status"] ==  "Winner"
      return array["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |cont_data|
      if cont_data["occupation"] == occupation
        return cont_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |cont_data|
      if cont_data["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |cont_data|
      if cont_data["hometown"] == hometown
        return cont_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  avg = 0
  data[season].each do |array|
    array.each do |cont_data, values|
      count += 1
      age += array["age"].to_f
    end
    avg = (age/count).round
  end
  avg
end
