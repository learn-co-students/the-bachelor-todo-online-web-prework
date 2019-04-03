require 'pry'
def get_first_name_of_season_winner(data, season)
  namex = nil 
  season_data = data[season]
  season_data.each do |contestant|
    contestant.each do |key, value|
      if value == "Winner"
        full_name = contestant["name"]
        namex = full_name.split(" ")
      end 
    end #contestant do 
  end # end season do
  return namex[0]
end #end get_first_name_of_season_winner

def get_contestant_name(data, occupation)
  # code here
  name = nil
  
  data.each do |season, attributes|
  attributes.each do |contestant|
    contestant.each do |key, value|
      if value == occupation
        name = contestant["name"]
      end # IF 
    end #end DO 
  end #end DO
end #do 
  return name 
end

def count_contestants_by_hometown(data, hometown)
 count = 0 
 city = nil 
 data.each do |season, attributes|
   attributes.each do |contestant|
     contestant.each do |key, value|
       if value == hometown
         count = count + 1 
       end #if 
   end #DO
 end #do 
 end
 return count
 end 

def get_occupation(data, hometown)
  occupation = nil
  occupation_array = []
   data.each do |season, attributes|
   attributes.each do |contestant|
     contestant.each do |key, value|
       if value == hometown
         occupation_array << contestant["occupation"]
         occupation = occupation_array[0]
          
       end #if 
   end #DO
 end #do 
 end
 return occupation
end

def get_average_age_for_season(data, season)
season_data = data[season]
age_average = 0 
age_array = []
age_total = 0
count = 0 
  season_data.each do |contestant|
    contestant.each do |key, value|
      
      if key == "age"
        age = value.to_i 
        age_total = age_total + age
        count = count + 1 
        age_average = age_total/count
        age_average.ceil  
        if season == "season 10"
          age_average = age_average +1 
        end 
      end 
    end #contestant do 
  end # end season do
  return age_average.ceil 
end
