require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  #binding.pry
  data.each do |season_number, contestant_array|
    #binding.pry
    contestant_array.each do |contestant|
      #binding.pry
      contestant.each do |contestant_attribute, attribute_value|
      #binding.pry
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
  #binding.pry
  data.each do |season_number, contestant_array|
    #binding.pry
    contestant_array.each do |contestant|
      #binding.pry
      contestant.each do |contestant_attribute, attribute_value|
      #binding.pry
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
  #binding.pry
  data.each do |season_number, contestant_array|
    #binding.pry
    contestant_array.each do |contestant|
      #binding.pry
      contestant.each do |contestant_attribute, attribute_value|
      #binding.pry
        if attribute_value == hometown
          hometown_array << contestant["name"]
          #binding.pry
        end
      end 
    end
  end 
  hometown_array.length
end

def get_occupation(data, hometown)
  occupation_array = []
  #binding.pry
  data.each do |season_number, contestant_array|
    #binding.pry
    contestant_array.each do |contestant|
      #binding.pry
      contestant.each do |contestant_attribute, attribute_value|
      #binding.pry
        if attribute_value == hometown
          occupation_array << contestant["occupation"]
          #binding.pry
        end
      end 
    end
  end 
  occupation_array.first
end

def get_average_age_for_season(data, season)
age_array = []
  #binding.pry
  data.each do |season_number, contestant_array|
    #binding.pry
    contestant_array.each do |contestant|
      #binding.pry
      #contestant.each do |contestant_attribute, attribute_value|
      #binding.pry
        if season_number == season
          age_array << contestant["age"].to_f
          #binding.pry
        #end
      end 
    end
  end 
  ((age_array.sum) / (age_array.length)).round
  #binding.pry
end
