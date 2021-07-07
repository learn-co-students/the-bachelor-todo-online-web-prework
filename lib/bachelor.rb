require "pry"

def get_first_name_of_season_winner(data, season)
data[season].each do |cast|
  if cast["status"] == "Winner"
    first_name = cast["name"]
    return first_name.split(" ").first
end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, cast|
    cast.each do |info|
    if info["occupation"] == occupation
    return info["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, cast|
    cast.each do |info|
       if info["hometown"] == hometown
      counter += 1
    end
  end
end
counter
end

def get_occupation(data, hometown)
  data.each do |season, cast|
    cast.each do |info|
    if info["hometown"] == hometown
    return info["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
ages = []
data[season].each do |cast|
    ages << cast["age"].to_i
end
average = ages.sum.to_f/ages.size
average.round
end

