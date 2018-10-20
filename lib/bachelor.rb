def get_first_name_of_season_winner(data, season)
   data.each do |season_num, contestants|
     if season_num == season
        contestants.each do |contestant|
          if contestant["status"] == "Winner"
            return contestant["name"].split(" ").first
            
      end
     end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_num, contestants|
    contestants.each do |occ|
      if occ["occupation"] == occupation
        return occ["name"]
      end
    end
  end
end



def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season_num, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        count += 1
     end    
   end    
 end
  return count
end



def get_occupation(data, hometown)
  data.each do |season_num, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]

    end
   end
  end
end



def get_average_age_for_season(data, season)
   ages = []
   total = 0
     data.each do |season_num, contestants|
       if season_num == season
          contestants.each do |contestant_info|
              ages.push(contestant_info["age"])
      end
   end
 end
      ages.each {|x| total += x.to_i}
      average = total.to_f / ages.length.to_f
      return average.round()
end	

