require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data.each do |seasons, data|
    if seasons == season
    data.each do |stats|
      if stats["status"] == "Winner"
         name << stats["name"]
         #binding.pry
      end
    end
    end 
  end 
  name.split.first
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |seasons, data|
    data.each do |stats|
      if stats["occupation"] == occupation
         name << stats["name"]
         #binding.pry
      end
    end 
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasons, data|
    data.each do |stats|
      if stats["hometown"] == hometown
         counter += 1
      end
    end 
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  occu = ""
  data.each do |seasons, data|
    data.each do |stats|
      if stats["hometown"] == hometown
         occu << stats["occupation"]
         return occu
      end
    end 
  end
  
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  counter = 0
  average = 0
  data.each do |seasons, data|
    if seasons == season
      data.each do |stats|
         age += stats["age"].to_f
         counter += 1
      end 
    end
  end
  average = (age/counter)
  average.round
  #binding.pry
end
