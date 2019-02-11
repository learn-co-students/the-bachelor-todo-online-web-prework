require'pry'

def get_first_name_of_season_winner(data, season)
  
  data[season].each do |contestant_info|
    
    
  
  #data.each do |season_1, contestants|
  
    #  if season == season_1  
    
  #   contestants.each do |contestant_info|
      
      
        
        if contestant_info["status"] == "Winner"
 #binding.pry         
          return contestant_info["name"].split(" ")[0] 
        

      
   #     end 
   #  end 
    end 
  end 
end

def get_contestant_name(data, occupation)
  # code here
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