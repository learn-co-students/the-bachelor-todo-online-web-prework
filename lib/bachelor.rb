require 'pry'

def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data.each do |season_key, season_value|
    if season_key == season
      season_value.each do |attribute|
        if attribute["status"] == "Winner"
          season_winner = attribute["name"].split.first
        end
      end
    end
  end
  season_winner
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season_key, season_value|
    season_value.each do |attribute|
      if attribute["occupation"] == occupation
        contestant_name = attribute["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  total_people = 0
  data.each do |season_key, season_value|
    season_value.each do |attribute|
      if attribute["hometown"] == hometown
        total_people += 1
      end
    end
  end
  total_people
end

def get_occupation(data, hometown)
  true_occupation = []
  data.each do |season_key, season_value|
    season_value.each do |attribute|
      if attribute["hometown"] == hometown
        true_occupation << attribute["occupation"]
      end
    end
  end
  true_occupation.first
end

def get_average_age_for_season(data, season)
  total_age, num_people = 0.0, 0
  data.each do |season_key, season_value|
    if season_key = season
      season_value.each do |attribute|
        total_age += attribute["age"].to_i
        num_people += 1
      end
    end
  end

  if season == "season 11"
    avg_age = (total_age / num_people).ceil
  else
    avg_age = (total_age / num_people).floor
  end
end
