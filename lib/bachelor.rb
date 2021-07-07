def get_first_name_of_season_winner(data, season)
  data.each do |season_key, contestant_values|
    if season_key == season
      contestant_values.each do |status|
        if status["status"] == "Winner"
          return status["name"].split(" ")[0]
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestant_data|
    contestant_data.each do |occupation_search|
      if occupation_search["occupation"] == occupation
        return occupation_search["name"]
      end
    end
  end
end



def count_contestants_by_hometown(data, hometown)
  array = []
  data.each do |season, contestants_data|
  	contestants_data.each do |hometown_search|
  		if hometown_search["hometown"] == hometown
  			array << hometown
  		end
  	end
  end
  return array.length
end	

def get_occupation(data, hometown)
  data.each do |season, contestants_data|
    contestants_data.each do |hometown_search|
      if hometown_search["hometown"] == hometown
        return hometown_search["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = []   
  ans = ""   
    data[season].each do | season_key, contestant_data |
      arr << season_key["age"].to_f
    end  
  arr_sum = arr.inject(0){|sum,x| sum + x }
  ans = arr_sum / arr.size
  ans = ans.round
end	
