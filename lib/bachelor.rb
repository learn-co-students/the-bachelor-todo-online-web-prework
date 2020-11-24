require "pry"

def get_first_name_of_season_winner(data, season_number)
  data.each do |season, array_of_contestants|
    if season.to_s == season_number
      array_of_contestants.each do |contestant|        
        if contestant["status"] == "Winner"
          full_name_arr = contestant["name"].split(" ")
          first_name = full_name_arr[0]
          return first_name
        end
      end
      return "No Winner"
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  
  count
end

def get_occupation(data, hometown)
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season_number)
  sum_of_ages = 0
  contestant_list = data[season_number.to_s]
  
  data.each do |season, array_of_contestants|
    if season == season_number
      array_of_contestants.each do |contestant|
        sum_of_ages += contestant["age"].to_f
      end
    end
  end
  
  average_age = (sum_of_ages / contestant_list.size).round
  return average_age
end
