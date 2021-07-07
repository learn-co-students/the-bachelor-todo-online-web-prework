require "pry"

def get_first_name_of_season_winner(data, season)
  full_name = ""
  data[season].each do |hash|
    if hash["status"] == "Winner"
      full_name = hash["name"]
    end 
  end 
  name_array = full_name.split
  name_array[0]
end

def get_contestant_name(data, occupation)
  
  data.each do |season, hash|
    
    hash.each do |hash2|
     #binding.pry
      return hash2["name"] if hash2["occupation"] == occupation
    end 
    
  end 
end

def count_contestants_by_hometown(data, hometown)
  total_count = 0 
  data.each do |season, hash|
    hash.each do |hash2|
      total_count +=1 if hash2["hometown"] == hometown
    end 
  end
  total_count
end

def get_occupation(data, hometown)
  data.each do |season, hash|
    hash.each do |hash2|
      return hash2["occupation"] if hash2["hometown"] == hometown
    end 
  end
end

def get_average_age_for_season(data, season)
  total_age = 0 
  total_num = 0 
  data[season].each do |hash|
    
    total_age += hash["age"].to_i
    total_num += 1
  end 
  #binding.pry
  avg = (total_age.to_f / total_num.to_f).round
end
