require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each_value do |contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each_value do |contestants|
    contestants.each do |contestant|
      count += 1 if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each_value do |contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  contestant_count = 0.0
  sum_age = 0.0

  data[season].each do |contestant|
    sum_age += contestant["age"].to_f
    contestant_count += 1.0
  end

  (sum_age / contestant_count).round
end
