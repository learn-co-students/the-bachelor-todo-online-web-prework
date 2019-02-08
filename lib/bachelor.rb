require 'pry'
def get_first_name_of_season_winner(data, season)
#binding.pry
    data[season].each do |contestants|
#binding.pry
        contestants.each do |key,value|
#binding.pry
          if value == "Winner"
            winner_name = contestants["name"]
# binding.pry
             first_name = winner_name.split(' ')
# binding.pry
             return first_name.first
# binding.pry
        end
      end
    end
end

def get_contestant_name(data, occupation)
  data.map do |season,info|
    info.map do |hash|
      if hash["occupation"] == occupation
      return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data,city)
#binding.pry
  counter = 0
    data.map do |season,info|
      info.map do |hash|
        if hash["hometown"] == city
        counter+=1
        end
      end
    end
 counter
end

def get_occupation(data,city)
  data.map do |season,info|
    info.map do |hash|
      if hash["hometown"] == city
        return hash["occupation"]
      end
    end
    end
end

def get_average_age_for_season(data,season)
  total_age = 0
  current_contestants = 0
  data[season].each do |contestants|
    contestants_age = contestants["age"]
    total_age += contestants_age.to_f
    current_contestants += 1
  end
    average_age = (total_age/current_contestants).round(0)
end



# Failures:
#   1) bachelor #get_contestant_name returns 'Carly Waddel' when passed data and the string 'Cruise Ship Singer'
#      Failure/Error: expect(get_contestant_name(data, "Cruise Ship Singer")).to eq("Carly Waddell")

#HASHED OUT ANSWER BELOW###########
