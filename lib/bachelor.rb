require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |i_of_array|
    if i_of_array["status"] == "Winner"
      return i_of_array["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, value|
    value.each do |i_of_array|
      if i_of_array["occupation"] == occupation
        return i_of_array["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, value|
    value.each do |i_of_array|
      if i_of_array["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |seasons, value|
    value.each do |i_of_array|
      if i_of_array["hometown"] == hometown
        return i_of_array["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number = 0 
  new_array =[]
  
  data[season].each do |i_of_array|
    new_array.push(i_of_array["age"].to_f)
    number = new_array.reduce(:+) / new_array.size.round
  end
  return number.round
end
