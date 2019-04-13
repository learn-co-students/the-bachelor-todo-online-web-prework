require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |hash|
    if hash["status"] = "Winner"
      return hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |hash|
      hash.each do |attribute, value|
        if value == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |hash|
      hash.each do |attribute, value|
        if value == hometown
          count += 1 
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0 
  age = 0
  data[season].each do |hash|
    age = age + hash["age"].to_f
    count += 1 
  end
  (age/count).round
end