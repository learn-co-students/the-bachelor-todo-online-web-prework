require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
   data.each do |seasonhere, season_info|
     if season == seasonhere.to_s
       season_info.each do |contestant,  attributes|
         if contestant["status"] == "Winner"
           return contestant["name"].split(" ")[0]
         end
       end
      end
    end

end

def get_contestant_name(data, occupation)
  # code herelearn
  
  data.each do |seasonhere, season_info|
       season_info.each do |contestant,  attributes|
         if contestant["occupation"] == occupation
           return contestant["name"];
         end
       end
  
    end
    
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasonhere, season_info|
       season_info.each do |contestant,  attributes|
         if contestant["hometown"] == hometown
           counter += 1 
         end
       end
  
    end
    counter
end

def get_occupation(data, hometown)
  # code here
   data.each do |seasonhere, season_info|
       season_info.each do |contestant,  attributes|
         if contestant["hometown"] == hometown
           return contestant["occupation"];
         end
       end
  
    end
end

def get_average_age_for_season(data, season)
  # code here
  contestants_count = 0
  age_total = 0
  
  data.each do |seasonhere, season_info|
     if season == seasonhere.to_s

       season_info.each do |contestant,  attributes|
         contestants_count += 1
         age_total += contestant["age"].to_f
         
         #binding.pry

       end
      end
    end

    #returnappl
    apple = (age_total / contestants_count).to_f
    banana = (age_total / contestants_count).round
       # binding.pry
       return banana
end
