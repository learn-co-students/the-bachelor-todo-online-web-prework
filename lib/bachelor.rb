require 'pry'

def get_first_name_of_season_winner(data, season)
  #data is everything, season is the season number

  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info

if season == season_num
    info.map do |hash|
    if hash["status"] == "Winner"
      first_name = hash["name"]
       first_name.split(" ").first



    end
  end
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
