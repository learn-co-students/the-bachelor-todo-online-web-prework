def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    if array["status"] == "Winner"
      return array ["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |describe|
      describe.each do |description, value|
        if value == occupation
          return describe["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |describe|
      if describe["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |description|
      if description["hometown"] == hometown
        return description["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  data[season].each do |array|
    array.each do |k, v|
      count += 1
      age += array["age"].to_f
    end
  end
  (age/count).round
end
