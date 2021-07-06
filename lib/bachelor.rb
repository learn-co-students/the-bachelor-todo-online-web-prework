require 'pry'

# Return the first name of the season's Winner
#   key = 
# {"name"=>"Tessa Horst",
#  "age"=>"26",
#  "hometown"=>"San Francisco, CA",
#  "occupation"=>"Social Worker",
#  "status"=>"Winner"}

def get_first_name_of_season_winner(data, season)
  data[season].each do |season_hash|   
  # binding.pry
   if season_hash["status"] == "Winner"
     return season_hash["name"].split(" ")[0]
    end
  end
  # binding.pry
end


# returns the name of the woman who has that occupation
def get_contestant_name(data, occupation)
  data.each do |season_hash, info|
    info.each do |detail|
      if detail["occupation"] == occupation
        return detail["name"]
      end
    end
  end
# binding.pry
end


# Return a counter of the number of contestants who are from that hometown
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_hash, info|
    info.each do |detail|
      if detail["hometown"] == hometown
        counter += 1 
      end
    end
  end
  return counter
end


# # Returns the occupation of the first contestant who hails from that hometown
def get_occupation(data, hometown)
   data.each do |season_hash, info|
     info.each do |detail|
       if detail["hometown"] == hometown
         return detail["occupation"]
       end 
    end 
  end
end

#   Return the average age of all of the contestants for that season
#   Avg == sum/(quantity_of_numbers)

def get_average_age_for_season(data, season)
  age = 0
  num_of_ages = 0
  
  data[season].each do |season_hash|
    season_hash.each do |detail, info|
      if detail == "age"
        num_of_ages += 1 
        age += info.to_f
      end
    end
  end
  return (age/num_of_ages).round
end



