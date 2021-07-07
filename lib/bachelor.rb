def get_first_name_of_season_winner(data, season)
  # code here
  first_name = ""
  name = ""
  if data.has_key?(season)
    data[season].each do |item|
    if item["status"] == "Winner"
      name = item["name"]
      name_arr = name.split(" ")
      first_name = name_arr[0]
    end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, data_values|
    data_values.each do |item|
      if item["occupation"] == occupation
        name = item["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, data_values|
    data_values.each do |item|
      if  item["hometown"] == hometown
        count += 1
      end
    end
  end
  count 
end

def get_occupation(data, hometown)
  # code here
  is_found = false
  occupation = ""
  data.each do |season, data_values|
    data_values.each do |person|
      if person["hometown"] == hometown && !is_found
        is_found = true
        occupation = person["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  average_age = 0
  count = 0
  if data.has_key?(season)
    data[season].each do |person|

      total_age += person["age"].to_i
      count += 1
      #puts "#{person["age"]}, #{total_age}, #{count}"
    end
  end
  if count != 0
    average_age = total_age/count.to_f
  end
  average_age.round(0)
end
