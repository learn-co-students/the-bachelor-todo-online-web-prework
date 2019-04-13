def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |contestant_attribute, attribute_value|
        if season == season_number && contestant_attribute == "status" && attribute_value == "Winner"
          winner = contestant["name"]
        end
      end 
    end
  end 
  winner.split.first
end


def get_contestant_name(data, occupation)
  name = ""
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |contestant_attribute, attribute_value|
        if contestant_attribute == "occupation" && attribute_value == occupation
          name = contestant["name"]
        end
      end 
    end
  end 
  name
end

def count_contestants_by_hometown(data, hometown)
  hometown_array = []
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |contestant_attribute, attribute_value|
        if attribute_value == hometown
          hometown_array << contestant["name"]
        end
      end 
    end
  end 
  hometown_array.length
end

def get_occupation(data, hometown)
  occupation_array = []
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |contestant_attribute, attribute_value|
        if attribute_value == hometown
          occupation_array << contestant["occupation"]
        end
      end 
    end
  end 
  occupation_array.first
end

def get_average_age_for_season(data, season)
age_array = []
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      #contestant.each do |contestant_attribute, attribute_value|
        if season_number == season
          age_array << contestant["age"].to_f
        #end
      end 
    end
  end 
  ((age_array.sum) / (age_array.length)).round
  #binding.pry
end