require'pry'
def get_first_name_of_season_winner(data, season)
  data[season].select do |person_data|
    if person_data["status"] == "Winner"

      return person_data["name"].split[0]
      #{0}

    end
  end
end
def get_contestant_name(data, occupation)
  data.each do |json,season|
    season.select do |person_data|
      if  person_data["occupation"] == occupation
return person_data ["name"]

      end
    end
  end
end
def count_contestants_by_hometown(data, hometown)
i=0
  data.each do |json,season|
    season.select do |person_data|
      if person_data["hometown"]== hometown
            i+=1

      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  data.each do |json,season|
    season.select do |person_data|
      if person_data["hometown"]== hometown
        return  person_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
    answer = 0
    i=0
  data[season].select do |person_data|
    answer  += person_data["age"].to_f
    i+=1
  end
roundint=answer/i
roundint.round
end




  # code here
