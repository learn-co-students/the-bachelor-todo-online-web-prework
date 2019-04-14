require 'pry'

def get_first_name_of_season_winner(data, season)
    name = ()
    data.each do |seasons, contestants|
      #binding.pry
      if seasons == season
        contestants.each do |array|
          array.each do |cats, stats|
            #binding.pry
            if array["status"] == "Winner"
              name = array["name"]
              return name = name.split.first
              #binding.pry
            end  
          end 
        end
      end
    end  
end

def get_contestant_name(data, occupation)
  name = ()
    data.each do |seasons, contestants|
      #binding.pry
        contestants.each do |array|
          array.each do |cats, stats|
            #binding.pry
            if array["occupation"] == occupation
              name = array["name"]
              return name
              #binding.pry
            end  
          end 
        end
    end  
end

def count_contestants_by_hometown(data, hometown)
    names = []
    data.each do |seasons, contestants|
      #binding.pry
        contestants.each do |array|
            #binding.pry
            if array["hometown"] == hometown
              names << array["name"]
              #binding.pry
            end  
        end
    end 
    #binding.pry
    return names.size
end

def get_occupation(data, hometown)
    data.each do |seasons, contestants|
      #binding.pry
        contestants.each do |array|
            #binding.pry
            if array["hometown"] == hometown
              return array["occupation"]
              #binding.pry
            end  
        end
    end 
end

def get_average_age_for_season(data, season)
  ages = []
    data.each do |seasons, contestants|
      #binding.pry
      if seasons == season
        contestants.each do |array|
            #binding.pry
              ages << array["age"].to_f
          end 
          #binding.pry
          return (ages.sum/ages.size).round
      end
     
    end  
end
