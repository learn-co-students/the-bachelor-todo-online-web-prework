def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data.fetch(season).each do |contestant|
    if contestant.has_value?("Winner")
      name = contestant.fetch("name").split.first 
    end
  end
  name
end

def get_contestant_name(data, occupation)
  # code here
    name = ""
  data.each do |season, values|
    values.each do |contestant|
      if contestant.has_value?(occupation)
        name = contestant.fetch("name") 
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.each do |season, values|
    values.each do |contestant|
      if contestant.has_value?(hometown)
        counter+=1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  # code here 
  occupation = ""
  data.each do |season, values|
    values.each do |contestant|
      if contestant.has_value?(hometown)
        return contestant.fetch("occupation")
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  count = 0
  average = 0
  data.fetch(season).each do |contestant|
      sum += contestant.fetch("age").to_f
      count+=1
  end
  average = sum / count
  average.round
end


  