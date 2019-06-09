require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, info|
    if season_num == season
      info.each do |attributes, personal_data|
        if attributes["status"] == "Winner"
          return attributes["name"].split.first
        end
      end
    end
  end
end



def get_contestant_name(data, occupation)

  data.each do |season, info|
    info.each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
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
