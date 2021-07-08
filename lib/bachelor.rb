require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, info|
    if season_num == season
      info.each do |attributes|
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
  count = 0
  data.each do |season, info|
    info.each do |contestants|
      if contestants["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end


def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  number_contestants = 0
  average_age = 0
  data.each do |season_num, info|
    if season_num == season
      info.each do |attributes|
        age_total = age_total + attributes["age"].to_f
        number_contestants = number_contestants + 1
      end
    end
  end
  average_age = (age_total / number_contestants).round
end
