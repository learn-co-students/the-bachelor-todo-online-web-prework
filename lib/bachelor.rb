def get_first_name_of_season_winner(data, season)
  name = nil
     data[season].each do |index|
        if index["status"] == "Winner"
            name = index["name"]
        end
    end
    name.split(" ").first
    end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |k, v|
    v.each do |index|
      if index["occupation"] == occupation
        name = index["name"]
       end
    end
  end
    name
end

def count_contestants_by_hometown(data, hometown)
       count = 0
        data.each do |k, v|
            v.each do |index|
                if index["hometown"] == hometown
                 count +=1
                  end
                end
              end
              count
        end

def get_occupation(data, hometown)
  occ = []
  data.each do |k, v|
    v.each do |index|
     if hometown == index["hometown"]
       occ << index["occupation"]
     end
   end
 end
   occ[0]
  end

def get_average_age_for_season(data, season)
    ages = []
    average = 0
      data.each do |k, v|
        if season == k
          v.each do |x|
          ages << x["age"].to_i
         average = ages.inject {|sum, element| sum + element}.to_f/ages.size
            end
          end
      end
      average.round
        end
        
      
