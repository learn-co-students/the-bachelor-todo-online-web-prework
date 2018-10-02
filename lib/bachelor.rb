require 'pry'
def get_first_name_of_season_winner(data, season)
  full_name =
  data.each do |number, info|
    if number == season
      if info[0]["status"] == "Winner"
        full_name = info[0]["name"]
        separate_names = full_name.split
        return separate_names[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |number, info|
    info.each do |collection|
      if collection["occupation"] == occupation
        return collection["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |number, info|
    info.each do |collection|
      if collection["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |number, info|
    info.each do |collection|
      if collection["hometown"] == hometown
        return collection["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |number, info|
    if number == season
      info.each do |collection|
        ages.push (collection["age"].to_i)
      end
    end
  end
  average = ages.sum / ages.size.to_f
  average.round
end
