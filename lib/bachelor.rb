
require "pry"

def get_first_name_of_season_winner(data, season)
     data.each do |k,v|
          if k==season
            v.each do |element|
              element.each do |k1,v1|
               if (k1=="name")
                  return v1.split(" ")[0]
                end  
              end
           end 
        end 
    end
end
def get_contestant_name(data, occupation)
 data.each do |k,v|
     v.each do |item|
       item.each do |k1,v1|
         if (k1=="occupation")
           if occupation==v1
             return item["name"]
          end
        end 
      end
    end
  end 
end
def count_contestants_by_hometown(data, hometown)
 counter=0;
 data.each do |k,v|
   v.each do |item|
     item.each do |k1,v1|
       if (k1=="hometown")
         if (v1==hometown)
           counter = counter + 1;
         end   
       end
     end
  end
 end
 counter
end

def get_occupation(data, hometown)
     data.each do |k,v|
      v.each do |item|
        item.each do |k1,v1|
          if (k1=="hometown")
            if hometown==v1
              return item["occupation"]
            end 
          end
        end
      end
   end
end
  

def get_average_age_for_season(data, season)
  total=0
  number_of_contestants=0
  
  data.each do |k,v|
    if (k==season)
      v.each do |item|
        total = total + item["age"].to_i
        number_of_contestants = number_of_contestants + 1;
      end
    end  
  end
  (total/number_of_contestants.to_f).round
  
  
end
