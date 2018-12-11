def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"].downcase == "winner"
        return contestant["name"].split(" ").first
      end
    end
  end



def get_contestant_name(data, occupation)
  data.each do |season, contestants|
     contestants.each do |contestant|
    if contestant["occupation"] == occupation
      return contestant["name"]
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_people = 0
  ages = 0
  data[season].each do |contestants|
  ages += contestants["age"].to_i
  num_people +=1
  end
  (ages/num_people.to_f).round
end
