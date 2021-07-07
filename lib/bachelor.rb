require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |k, v|
      if v == "Winner"
        name = people["name"]
        return name.split(" ").first
      end
    end
  end   
end


# Build a method, get_contestant_name, that takes in the data hash and an occupation string and returns the name of the woman who has that occupation.

def get_contestant_name(data, occupation)
  # binding.pry
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |k, v|
        if v == occupation
          return contestant["name"]
        end
      end
    end
  end
end


# Build a method, count_contestants_by_hometown, that takes in two arguments––the data hash and a string of a hometow. This method should return a counter of the number of contestants who are from that hometown.

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          hometown_count += 1
        end
      end  
    end
  end
  hometown_count
end

# Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown. It returns the occupation of the first contestant who hails from that hometown.

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |key, value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end


# Build a method, get_average_age_for_season, that takes in two arguments––the data hash and a string of a season. Iterate through the hash and return the average age of all of the contestants for that season.

def get_average_age_for_season(data, season)
  count = 0
  total_age = 0
  data[season].each do |people|
    people.each do |key, value|
      if key == "age"
        count += 1
        total_age += value.to_f
      end
    end
  end
  average = (total_age / count).round 
  return average
end


