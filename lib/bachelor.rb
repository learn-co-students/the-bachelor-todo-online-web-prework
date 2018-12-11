def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data.each do |seasons, description|
    if season == seasons
      description.each do |stats|
        if stats["status"] == "Winner"
        name << stats["name"]
        end
      end
    end
  end
  name.split.first
end



def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, description|
      description.each do |stats|
        if stats["occupation"] == occupation
          name << stats["name"]

      end
    end
  end
  name
end


def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |season, description|
    description.each do |stats|
      if stats["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, description|
    description.each do |stats|
      if stats["hometown"] == hometown
        occupation << stats["occupation"]
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  counter = 0
  average = 0

  data.each do |seasons, description|
    if seasons == season
      description.each do |stats|
        if stats["age"]
         age += stats["age"].to_f
         counter += 1
       end
      end
    end
  end
average = (age/counter)
average.round
end
