def get_first_name_of_season_winner(data, season)
    data[season].each do |contestants|
        contestants.each do |key,value|
          if value == "Winner"
            winner_name = contestants["name"]
            first_name = winner_name.split(' ')
            return first_name.first
        end
      end
    end
end

def get_contestant_name(data, occupation)
    data.each do |season, contestants|
        contestants.each do |contestant_data_array|
          contestant_data_array.each do |key, value|
          if value == occupation
            contestant_name = contestant_data_array["name"]
            return contestant_name
          end
         end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
    hometown_counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant_data_array|
        contestant_data_array.each do |key, value|
          if value == hometown
            hometown_counter += 1
          end
        end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
data.each do |season, contestants|
  contestants.each do |contestant_data_array|
    contestant_data_array.each do |key, value|
      if value == hometown
        return contestant_data_array["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  number_contestants = 0
  data[season].each do |contestants|
    contestants_age = contestants["age"]
    total_age += contestants_age.to_f
    number_contestants += 1
  end
    average_age = (total_age/number_contestants).round(0)
end
