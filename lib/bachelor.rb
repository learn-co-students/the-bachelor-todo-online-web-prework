def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant|
    if season == season_num
      contestant.each do |const_hash|
        if const_hash["status"] == "Winner"
          return const_hash["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
data.each do |season_num, contestant|
    contestant.each do |const_hash|
      if const_hash["occupation"] == occupation
        return const_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
count = 0 
data.each do |season_num, contestant|
  contestant.each do |const_hash|
  if const_hash["hometown"] == hometown
    count += 1 
     end
    end
   end
count
end

def get_occupation(data, hometown)
data.each do |season_num, contestant|
  contestant.each do |const_hash|
    if const_hash["hometown"] == hometown
      return const_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
total_age = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_i
  end
  average = total_age.to_f / data[season].length
  average.round
end	

