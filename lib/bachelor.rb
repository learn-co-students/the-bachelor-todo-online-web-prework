require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |person|
    if person["status"] == "Winner"
      name = person["name"]
    end
  end
  name_a = name.split(' ')
  name = name_a[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, people|
    people.each do |person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        count += 1 
      end
    end
  end
  count 
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
        return occupation
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = []
  data[season].each do |person|
    age << person["age"].to_i
  end
  count = age.length 
  sum = 0.0
  age.each do |val|
    sum += val 
  end
  (sum / count).round
end
