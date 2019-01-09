def get_first_name_of_season_winner(data, season_number)
  # code here
  data[season_number].each do |people|

    people.each do |k,v|
      if v == "Winner"
        full_name = people["name"]
        return full_name.split(' ').first
      end 
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people_data|
    people_data.each do |array|
      array.each do |k, v|
        if v == occupation 
          return array["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  hometown_array = []
  data.each do |season, people_data|
    people_data.each do |array|
      array.each do |k, v| 
        if v == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people_data|
    people_data.each do |array|
      array.each do |k, v|
        if v == hometown 
          return array["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0 
  number_contestants = 0 
  data[season].each do |people|
    contestant_age = people["age"]
    total_age += contestant_age.to_i
    number_contestants += 1 
  end
  average_age = (total_age/number_contestants.to_f).round(0)
  average_age
end
