require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each {|contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split(" ")[0]
    end
  }
  
  return winner
end

def get_contestant_name(data, occupation)
  contestant_match = ""
  data.each {|season, contestant_data|
    contestant_data.each {|contestant|
      if contestant["occupation"] == occupation
        contestant_match = contestant["name"]
  data.each {|season, v|
    binding.pry
    v.each {|contestant|
      if contestant[occupation] == occupation
        
      end
    }
  }
  
  contestant_match
  
end

def count_contestants_by_hometown(data, hometown)
  hometown_results = []
  data.each {|season, contestant_data|
  binding.pry
    hometown_results = contestant_data.map {|contestant| 
    binding.pry
      if contestant["hometown"] == hometown
        contestant
      end
      binding.pry
    }
    
  }
  binding.pry
  hometown_results
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
