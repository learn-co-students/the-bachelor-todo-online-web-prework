require 'pry'
def get_first_name_of_season_winner(data, season)
  full_name =
  data.each do |seazon, contestant|
    if seazon == season
      if contestant[0]["status"] == "Winner"
        full_name = contestant[0]["name"]
        first_name = full_name.split
        return first_name[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end
  
def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, contestant|
    contestant.each do |element|
      element.each do |key, value|
        if value == hometown
        hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  sum = 0
  data.each do |seazon, contestant|
    if seazon == season
      contestant.each do |element|
        ages.push (element["age"].to_i)
      end
    end
  end
  ages.each do |num|
    sum += num.to_f
  end
  average = sum / ages.length 
  return average.round
end

