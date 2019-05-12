require 'pry'

def get_first_name_of_season_winner(data, season)
  contestant = " "
  data[season].each do |contestant_facts|
    contestant_facts.each do |contestant_attributes, contestant_data|
      if contestant_data == "Winner"
      contestant = contestant_facts["name"]
      end
    end
  end
  contestant.split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
      contestants.each do |contestant, contestant_data|
        contestant.each do |category, info|
        if info == occupation
          return contestant["name"]
        end
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant, contestant_data|
      contestant.each do |category, info|
        if hometown == info
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occupations_list = []
  data.each do |season, contestants|
    contestants.each do |contestant, contestant_data|
      contestant.each do |category, info|
        if info == hometown
          occupations_list << contestant["occupation"]
        end
      end
    end
  end
  return occupations_list[0]
end

def get_average_age_for_season(data, season)
  # code here
end
