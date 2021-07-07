def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        full_name = people["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, all_contestant_info|
    all_contestant_info.each do |people|
      people.each do |key, value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, arr_of_contestants|
    arr_of_contestants.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  data[season].each do |people|
    people.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
  answer = (age/count)
  return answer.round
end
