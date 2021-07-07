require 'pry'
def get_first_name_of_season_winner(data, season)
  winner_of_season = []
  data[season].each do |season_hash|
    if(season_hash["status"] == "Winner")
       winner_of_season << season_hash["name"]
    end
  end
  winner_of_season[0].split.first
end

def get_contestant_name(data, occupation)
  contestant_name = []
  data.each do |season, data_array|
    data_array.each do |data_hash|
      if(data_hash["occupation"] == occupation)
        contestant_name << data_hash["name"]
      end
    end
  end
  contestant_name.join(', ')
end

def count_contestants_by_hometown(data, hometown)
  contestants = []
  data.each do |season, data_array|
    data_array.each do |data_hash|
      if(data_hash["hometown"] == hometown)
        contestants << data_hash["name"]
      end
    end
  end
    contestants.count
end

def get_occupation(data, hometown)
  occupation =[]
  data.each do |season, data_array|
    data_array.each do |data_hash|
      if(data_hash["hometown"] == hometown)
        occupation << data_hash["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  age = []
  number_of_age = 0
  data[season].each do |season_hash|
    # We need to add to the age array
    # We need to increase the number_of_age number
    # We need to devide the number_of_age by the amount of people(= length of the age array)
    age << season_hash["age"]
        number_of_age += season_hash["age"].to_i
  end
  average = (number_of_age.to_f / age.size).round
  average
end
