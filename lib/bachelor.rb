def get_first_name_of_season_winner(data, season)
  season_winner = []
  data[season].each do |contestant|
    if(contestant["status"] == "Winner")
      season_winner << contestant["name"]
    end
  end
  season_winner[0].split.first
end

def get_contestant_name(data, occupation)
  full_name = []
  data.each do |season, info|
    info.each do |stats|
      if(stats["occupation"] == occupation)
        full_name << stats["name"]
      end
    end
  end
  full_name.join(', ')
end

def count_contestants_by_hometown(data, hometown)
  contestants = []
  data.each do |season, info|
    info.each do |stats|
      if(stats["hometown"] == hometown)
        contestants << stats["name"]
      end
    end
  end
  contestants.count
end

def get_occupation(data, hometown)
  jobs = []
  data.each do |season, info|
    info.each do |stats|
      if(stats["hometown"] == hometown)
        jobs << stats["occupation"]
      end
    end
  end
  jobs[0]
end

def get_average_age_for_season(data, season)
  age = []
  number_of_age = 0
  data[season].each do |season_hash|
    age << season_hash["age"]
    number_of_age += season_hash["age"].to_i
  end
  average = (number_of_age.to_f / age.size).round
  average
end