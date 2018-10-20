def get_first_name_of_season_winner(data, season)
  first_name = ""
  data.each do |season_number, info_array|
    if season_number == season
      info_array.each do |contestant|
        contestant.each do |info_item, item_value|
          if item_value == "Winner"
            first_name = contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  full_name = ""
  data.each do |season_number, info_array|
    info_array.each do |contestant|
      contestant.each do |info_item, item_value|
        if item_value == occupation
          full_name = contestant["name"]
        end
      end
    end
  end
  full_name
end

def count_contestants_by_hometown(data, hometown)
  num_from_town = 0
  data.each do |season_number, info_array|
    info_array.each do |contestant|
      contestant.each do |info_item, item_value|
        if item_value == hometown
          num_from_town += 1
        end
      end
    end
  end
  num_from_town
end

def get_occupation(data, hometown)
  contestant_occupation = ""
  data.each do |season_number, info_array|
    info_array.each do |contestant|
      contestant_occupation = contestant.find do |info_item, item_value|
        if item_value == hometown
          return contestant["occupation"]
        end
      end
    end
  end
  #.find returns the first element for which the block returns true
end

def get_average_age_for_season(data, season)
  total_age = 0
  counter = 0
  data.each do |season_number, info_array|
    if season_number == season
      info_array.each do |contestant|
        contestant.each do |info_item, item_value|
          total_age += contestant["age"].to_f
          counter += 1
        end
      end
    end
  end
  return ((total_age / counter).round)
end
