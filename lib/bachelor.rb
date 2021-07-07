require 'pry'
def get_first_name_of_season_winner(data, seasons)
    # code here
  data.each do |season, contestants|
  contestants.each do |contestants_info|
      if season == seasons
        return contestants_info["name"].split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    #season = season number
    #contestants = all contestants info
    contestants.each do |contestants_info|
      #contestants_info = individual contestant info
      if contestants_info["occupation"] == occupation
        return contestants_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    #season = season number
    #contestants = all contestants info
    contestants.each do |contestants_info|
      #contestants_info = individual contestant info
      if contestants_info["hometown"] == hometown
        counter +=1
  end
end
end
counter
end


def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    #season = season number
    #contestants = all contestants info
    contestants.each do |contestants_info|
      #contestants_info = individual contestant info
      if contestants_info["hometown"] == hometown
        return contestants_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  counter = 0

  data[season].each do |contestants_info|
    contestants_info.each do |key, value|
      if key == "age"
        counter += 1
        age += value.to_f
      end
    end
  end
  answer = (age/counter).round
  return answer
end
