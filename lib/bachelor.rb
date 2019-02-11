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
  counter = 0 
  data.each do |season_key, contestants_array|
    contestants_array.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        counter = counter + 1 
      end
    end
  end
  counter 
end

def get_occupation(data, hometown)
  data.each do |season_key, contestants_array|
    contestants_array.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  num_contestants = 0 
  total_age = 0
    data[season].each do |contestant_info|
      num_contestants += 1 
      total_age += contestant_info["age"].to_i 
    end 
    (total_age / num_contestants.to_f).round(0)    
end 

# Take away from last method... the rspec tests will throw itegers and 
# floats at this and expect method to round like regular math, not like
# the rounding done in code. Bottom line, the code above allows for those
# monkey wrench challenges by implementing .to_i on line 71 and then .to_f 
# followed by .round(0) on line 73. 

# Pieces of previous code below:

#age_num_array << contestant_info["age"].to_i

#age_num_array.each {|age| total_age = total_age + age}

#age_num_array.inject{ |sum, el| sum + el }.to_f  / age_num_array.size


#def get_average_age_for_season(data, season)
# age_num_array = []
# data[season].each do |contestant_info|
#   age_num_array << contestant_info["age"].to_i
# end
#   total_age = 0
#   age_num_array.each {|age| total_age = total_age + age}

# total_age / age_num_array.size
#end





