require "pry"


def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    if person["status"] == "Winner"
      #binding.pry
        return person["name"].split(" ")[0]
      end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    people.each do |person|
      #binding.pry
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants = 0
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        contestants += 1
        #binding.pry
      end
    end
  end
  contestants
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        #binding.pry
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  data[season].each do |person|
    age += person["age"].to_f
    count += 1
    #binding.pry
  end
  #binding.pry
  (age/count).round
end
