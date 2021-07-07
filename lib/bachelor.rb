require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner = " "
  data.each do |season_num, contestant_array|
    if season_num.to_s == season
      contestant_array.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if value == "Winner"
         winner = contestant_hash["name"].split(' ')[0]
        end
      end
    end
  end
end 
  winner
end   

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_name = contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_num, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  average_age = 0
  counter = 0
  data.each do |season_num, contestant_array|
    if season_num.to_s == season
      contestant_array.each do |contestant_hash|
        average_age = (average_age + (contestant_hash["age"]).to_f)
        counter += 1
      end
    end
  end
  (average_age/counter).round
end
