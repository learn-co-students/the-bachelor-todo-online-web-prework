require 'pry'

def get_first_name_of_season_winner(data, season)
 winner_hash = nil
 winner_name = nil
  data[season].each do |girl|
    girl.each do |k, v|
      if k == "status" && v == "Winner"
       winner_hash = girl
      end
    end
  end
 winner_name = winner_hash["name"].split(" ")
 winner_name[0]
end

def get_contestant_name(data, occupation)
  winner_hash = nil
  data.each do |season, contestants|
    contestants.each do |girl|
      girl.each do |k, v|
        if k == "occupation" && v == occupation
          winner_hash = girl
        end
      end
    end
  end
  winner_hash["name"]
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |girl|
      girl.each do |k, v|
        if k == "hometown" && v == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  target_hash = nil
  data.each do |season, contestants|
    contestants.each do |girl|
      girl.each do |k, v|
        if k == "hometown" && v == hometown
          target_hash ||= girl
        end
      end
    end
  end
  target_hash["occupation"]
end

def get_average_age_for_season(data, season)
  age_array = []
  sum_age = 0
  data[season].each do |girl|
    girl.each do |k, v|
      if k == "age"
        age_array << v.to_i
      end
    end
  end
  age_array.each {|x| sum_age += x}
  (sum_age.to_f / (age_array.length).to_f).round
end
