require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |person, values|
          if person["status"] == "Winner"
              return person["name"].split(" ")[0]
          end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
      contestants.each do |person, values|
          if person["occupation"] == occupation
              return person["name"]
          end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  new = []
  data.each do |seasons, contestants|
    contestants.each do |person, values|
      if person["hometown"] == hometown
        new << person["name"]
      end
    end
  end
  return new.size
end

def get_occupation(data, hometown)
  occupations = []
  data.each do |seasons, contestants|
    contestants.each do |person, values|
      if person["hometown"] == hometown
        occupations << person["occupation"]
      end
    end
  end
  return occupations[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seasons, contestants|
    contestants.each do |person, values|
      if seasons == season
        ages << person["age"].to_i
      end
    end
  end
  return (ages.inject(0.0) { |sum,el| sum + el }/ages.size).round
end
