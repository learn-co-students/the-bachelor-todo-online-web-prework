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
  data.each {|season, contestant_data|
    contestant_match = ""
    contestant_data.each {|contestant|
      if contestant["occupation"] == occupation
        contestant_match = contestant["name"]
      end
    }
  }
  
  contestant_match
  
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
