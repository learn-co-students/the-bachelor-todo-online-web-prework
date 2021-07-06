require "pry"

def get_first_name_of_season_winner(data, season)
data[season].each do |contestant|

       contestant.each do |key,value|
        if value == "Winner"
            name = contestant["name"]
            return name.split(' ').first
        end 
      end
    end
end




def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |contestant|
      contestant.each do|key, value|
      if value == occupation
        name = contestant["name"]
        return name
end
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
   data.each do |season, people|
    people.each do |contestant|
    if contestant.values.include? (hometown)
      counter+=1
     
end
end
end
return counter
end

def get_occupation(data, hometown)
   data.each do |season, people|
    people.each do |contestant|
    if contestant.values.include? (hometown)
      return contestant["occupation"]
end
end
end
end



def get_average_age_for_season(data, season)
  age_array = []
 data[season].each do |contestant|
 age = contestant["age"].to_i
 age_array << age
       
end
average = age_array.sum.to_f/age_array.length.to_f
return average.round
end

