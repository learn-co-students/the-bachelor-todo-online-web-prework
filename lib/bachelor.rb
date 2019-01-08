require 'pry'
def get_first_name_of_season_winner(data, season)
  name_array = []
  data.each do |season_hsh, data|
    if season_hsh == season
      data.each do |key, value|
        if key.fetch("status") == "Winner"
          name_array = key.fetch("name").split(" ")
        end
      end
    end
  end
  name_array[0]
end

def get_contestant_name(data, occupation)
  name = ''
  data.each do |season_hsh, data_array|
      data_array.each do |data|
        data.each do |key, value|
          if value == occupation
            name = data['name']
          end
        end
      end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, season_arr|
    season_arr.each do |data|
      data.each do |key, value|
        if value == hometown
          hometown_count += 1
        end
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  occupation = ''
  data.each do |season_hsh, data|
      data.each do |contestant|
        if contestant.fetch("hometown") == hometown
          occupation = contestant.fetch("occupation")
          break
        end
      end
  end
  occupation
end

def get_average_age_for_season(data, season)
  ages_sum = 0
  ages_count = 0
  data.each do |season_hsh, data|
    if season_hsh == season
      data.each do |contestant|
        ages_sum += contestant.fetch("age").to_i
        ages_count += 1
      end
    end
  end
  (ages_sum.to_f / ages_count).round
end
