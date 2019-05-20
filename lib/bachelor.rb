def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestant|
    if contestant.fetch("status") == "Winner"
      winner = contestant["name"].split(" ")[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, contestants|
    contestants.each do |contestant|
      if occupation != ""
        break
      elsif contestant["hometown"] == hometown
        occupation = contestant["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  age_sum = 0
  data[season].each do |contestant|
      count += 1
      age_sum = age_sum + contestant["age"].to_f
  end
  (age_sum/count).round
end
