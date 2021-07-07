require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |seasonNumber,contestants|
    if seasonNumber == season
      contestants.each do |contestant|
        contestant.each do |question, answer|
          if answer == "Winner"
            return contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasonNumber,contestants|
    contestants.each do |contestant|
        return contestant['name'] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
homeTown = []
  data.each do |seasonNumber,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        homeTown << contestant["name"]
      end
    end
  end
  return homeTown.count
end

def get_occupation(data, hometown)
  data.each do |seasonNumber,contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  counter = 0
  data.each do |seasonNumber,contestants|
    if seasonNumber == season
      contestants.each do |contestant|
        age += contestant["age"].to_f
        counter += 1
      end
    end
  end
  answer = (age/counter).round(0)
  return answer
end
