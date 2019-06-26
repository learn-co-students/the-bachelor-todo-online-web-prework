require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |player|
    if player["status"] == "Winner"
     return player["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
data.each do |season, array|
    array.each do |people|
      people.each do |key,val|
        if val == occupation
          return people["name"]
        end
      end
    end
  end
  get_contestant_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key,val|
        if val == hometown
          counter += 1
        end
      end
    end
  end
counter

end


def get_occupation(data, hometown)
  data.each do |season, array|
      array.each do |hash|
        hash.each do |key,val|
          if val == hometown
            return hash["occupation"]
          end
        end
      end
    end
end

def get_average_age_for_season(data, season)
  age = 0
count = 0
  data[season].each do |hash|
    hash.each do |key,val|
      if key == "age"
        count += 1
        age += val.to_f
      end
    end
  end

  answer = (age/count).round
return answer
end
