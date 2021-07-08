require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do
    |contestant|
    if contestant.value?("Winner") then return contestant["name"].split(" ")[0] end
  end
end

def get_contestant_name(data, occupation)
  data.keys.each do
    |season|
    data[season].each do
      |contestant|
      # binding.pry
      if contestant.values.include?(occupation) then return contestant.values[0] end
    end
  end
  # binding.pry
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.keys.each do
    |season|
    data[season].each do
      |contestant|
      # binding.pry
      if contestant.values.include?(hometown) then count += 1 end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.keys.each do
    |season|
    data[season].each do
      |contestant|
      # binding.pry
      if contestant.values.include?(hometown) then return contestant["occupation"] end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  age_sum = 0
  data[season].each do
    |contestant|
    count += 1
    age_sum += contestant["age"].to_i
  end
  average = (age_sum / count.to_f).round
end
