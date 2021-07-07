require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_numbers, contestant_arrays|
    if season_numbers == season
      contestant_arrays.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_numbers, contestant_arrays|
    contestant_arrays.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end  
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_numbers, contestant_arrays|
    contestant_arrays.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season_numbers, contestant_arrays|
    contestant_arrays.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_ages = 0
  contestant_count = 0
  data.each do |season_numbers, contestant_arrays|
    if season_numbers == season
      contestant_arrays.each do |contestant|
        if contestant["age"]
          sum_ages += contestant["age"].to_f
          contestant_count += 1
        end
      end
    end
  end
  sum_ages
  #contestant_count
  (sum_ages / contestant_count).round
end
