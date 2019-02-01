def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant_hash|
        if contestant_hash["status"] == "Winner"
          return contestant_hash["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season_num, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_num, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  integer_array = []
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant_hash|
        age_array << contestant_hash["age"]
      end
    end
  end
  age_array.each do |age|
    integer_array << age.to_i
  end
  sum = integer_array.inject(:+)
  average = (sum.to_f / age_array.length).round
end