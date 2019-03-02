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
      end
    }
  }
  
  contestant_match
  
end

def count_contestants_by_hometown(data, hometown)
  hometown_results = []
  data.each {|season, contestant_data|
    contestant_data.each {|contestant| 
      if contestant["hometown"] == hometown
        hometown_results << contestant
      end
    }
  }
  
  hometown_results.length
end

def get_occupation(data, hometown)
  data.collect {|season, contestant_data|
    contestant_data.map {|contestant|
      if contestant["hometown"] == hometown
        contestant["occupation"]
      end
    }
  }.flatten.compact[0]
  
end

def get_average_age_for_season(data, season)
  data.collect {|key, contestant_data|
    binding.pry
  }
end
