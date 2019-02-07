require 'pry'

def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data.each do |season_number, contestants_ary|
    if season_number == season
      contestants_ary.each do |contestant_hsh|
        contestant_hsh.each do |stats, value|
          if value == "Winner"
            season_winner = contestant_hsh["name"]
            
          end
        end
      end
    end
  end
  season_winner.split(" ")[0]
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
