require 'pry'

def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data.each do |season_number, contestants_ary|
    if season_number == season
      contestants_ary.each do |contestant_hsh|
        contestant_hsh.each do |stats, value|
          if value == "Winner"
            season_winner = contestant_hsh["name"]
            
          end
        end
      end
    end
  end
  season_winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  contestant_with_that_job = ""
  data.each do |season_number, contestants_ary|
    contestants_ary.each do |contestant_hsh|
      contestant_hsh.each do |stats, value|
        if value == occupation
          contestant_with_that_job = contestant_hsh["name"]
        end
      end
    end
  end
  contestant_with_that_job
end



def count_contestants_by_hometown(data, hometown)
  contestants_from_this_town = 0
  data.each do |season_number, contestants_ary|
    contestants_ary.each do |contestant_hsh|
      contestant_hsh.each do |stats, value|
        if value == hometown 
          contestants_from_this_town += 1 
        end
      end
    end
  end
  contestants_from_this_town
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season_number, contestants_ary|
    contestants_ary.each do |contestant_hsh|
      contestant_hsh.each do |stats, value|
        if value == hometown 
          occupation << contestant_hsh["occupation"]
        end
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  age_total = 0
  contestant_number = 0
  data.each do |season_number, contestants_ary|
    if season_number == season
      contestants_ary.each do |contestant_hsh|
        contestant_hsh.each do |stats, value|
          if stats == "age"
            age_total += contestant_hsh["age"].to_f
            contestant_number += 1
          end
        end
      end
    end
  end
  age = (age_total / contestant_number).round

end
