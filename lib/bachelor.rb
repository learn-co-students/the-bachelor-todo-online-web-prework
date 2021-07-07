def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |obj|
    if obj["status"] == "Winner"
      name = obj["name"]
    end 
  end 
  return name.split(' ')[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant_data|
    contestant_data.each do |obj|
      if obj["occupation"] == occupation
        return obj["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants_by_hometown = []
  data.each do |season, contestant_data|
    contestant_data.each do |obj|
      if obj["hometown"] == hometown
        contestants_by_hometown.push(obj["name"])
      end 
    end 
  end 
  contestants_by_hometown.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_data|
    contestant_data.each do |obj|
      if obj["hometown"] == hometown
        return obj["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |obj|
    ages.push(obj["age"].to_i)
  end 
  total_ages = ages.reduce { |acc, x| acc+x }
  average_age = total_ages.to_f/ages.length.to_f
  average_age.round
end
