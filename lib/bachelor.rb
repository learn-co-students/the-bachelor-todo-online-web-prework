def get_first_name_of_season_winner(data, season)
	data[season].each do |contestant|
		if contestant["status"] == "Winner"
			winner=contestant["name"].split[0]
		return winner	
		end
	end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, list_of_data|
    list_of_data.each do |person|
      return person["name"] if person["occupation"] == occupation
end
end
end 

def count_contestants_by_hometown(data, hometown)
  # code here
  count=0 
  data.each do |season, contestant|
    contestant.each do |person|
   count= count + 1 if  person["hometown"] == hometown 
   end 
 end 
   count
 end 
 

def get_occupation(data, hometown)
 	data.values.each do |list|
		list.each do |contestant|
			return contestant['occupation'] if contestant['hometown'] == hometown
		end
	end 
end
def get_average_age_for_season(date,season)
  contestants_total_age= 0 
  count= 0 
  data[season].each do |contestant_info|
  age=contestant_info["age"].to_i
  contestants_total_age +=age 
  count += 1
end 
average_age=contestants_total_age.to_f/count
average_age.round 
end 


  
  
  
  
  
  