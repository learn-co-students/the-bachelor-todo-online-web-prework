require "pry"


def get_first_name_of_season_winner(data, season)
  # code here

  data[season].each do |element|
    if element["status"] == "Winner"
      return element["name"].split.first
    end
  end
end


def get_contestant_name(data, occupation)
  # code here

  data.each do |season, info|
    info.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each do |season, info|
    info.each do |element|
      if element["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  average = 0.0
    data[season].each do |element|
        ages << element["age"]
      end
  for age in ages do
    average += age.to_f
  end
  average = average / ages.length
  return average.round

end
