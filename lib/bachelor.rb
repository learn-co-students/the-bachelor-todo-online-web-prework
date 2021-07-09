require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |show_season, contestants|
    if show_season == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(' ').first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |show_season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |show_season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |show_season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_ages = []
  data.each do |show_season, contestants|
    if show_season == season
      contestants.each do |contestant|
        contestant_ages << contestant["age"].to_f
      end
    end
  end
  age_sum = contestant_ages.inject(0) { |sum, i| sum + i }
  average = age_sum / contestant_ages.size
  average.round
end
