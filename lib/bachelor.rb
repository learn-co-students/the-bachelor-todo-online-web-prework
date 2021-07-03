require "pry"
def get_first_name_of_season_winner(data, season)
  #binding.pry
  first_name = ""
  data[season].each do |element| #access the target season
      element.each do |attribute, value| #acess the season data
        if attribute == "status" && value == "Winner" #if it's the winner
          first_name = element["name"].split
        end
      end
    end
  return first_name[0] 
end

def get_contestant_name(data, occupation)
  data.each do |season_key, season_data|
    season_data.each do |element| 
      element.each do |attribute, value|
        if attribute == "occupation" && value == occupation
          return element["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_key, season_data|
    season_data.each do |element| 
      element.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          hometown_counter += 1
        end
      end
    end
  end
  return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season_key, season_data|
    season_data.each do |element| 
      element.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          return element["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |element|
    element.each do |attribute, value|
      if attribute == "age"
        ages.push(value.to_f)
      end
    end
  end
  return (ages.inject {|sum, element| sum + element } / ages.size).round
end
