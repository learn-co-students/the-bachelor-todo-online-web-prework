def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |seasons, info|
    if seasons == season
      info.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split
          winner = winner[0]
end
end
end
end
winner
end


def get_contestant_name(data, occupation)
  contestant_name = nil
  data.collect do |seasons, info|
    info.find do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
end
end
contestant_name
end

def count_contestants_by_hometown(data, hometown)
  contestant_counter = 0
  data.collect do |seasons, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        contestant_counter = contestant_counter += 1
      else
      end
    end
  end
  contestant_counter
end

def get_occupation(data, hometown)
  first_contestant = nil
  data.each do |seasons, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        first_contestant = contestant["occupation"]
end
end
end
first_contestant
end

def get_average_age_for_season(data, season)
  sum_of_ages = 0
  num_of_entries = 0
  data[season].each  do |contestant|
    sum_of_ages += contestant["age"].to_f
    num_of_entries += 1
  end
  return (sum_of_ages / num_of_entries).round
end
