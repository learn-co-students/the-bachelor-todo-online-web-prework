require'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_key, contestants_array|
    if season == season_key  
      contestants_array.each do |contestant_info|
        if contestant_info["status"] == "Winner"
          return contestant_info["name"].split(" ")[0] 
        end 
      end 
    end 
  end 
end

#  The take away from the above get_first_name_of_season_winner method
#  is without line 5 setting the method to iterate over only the season
#  passed in to the method parameter, line 7 breaks (returns false) because
#  the method iterates over all the seasons and all the winners. We only 
#  want to return the winner for the season passed in.

#  See re-factored method directly below that does the same thing, setting
#  the iteration over the season passed in by eliminating the uneccessary
#  lines 4 and 5. Actually don't need to do those iterations. See below
#  Line 27. Both the code for the method above and below pass the rspec tests.

#def get_first_name_of_season_winner(data, season)
#  data[season].each do |contestant_info|
#    if contestant_info["status"] == "Winner"
#      return contestant_info["name"].split(" ")[0]
#    end 
#  end 
#end  
          
def get_contestant_name(data, occupation)
  data.each do |season_key, contestants_array|
    contestants_array.each do |contestant_info| 
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end


#contestant_info.each do |info_key, info_value|


#  data[season].each do |contestant_info|