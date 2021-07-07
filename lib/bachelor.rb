require 'pry'

def get_first_name_of_season_winner(data, season)
  whole_name = ""
  name_array = []
  first_name = ""
  data.each do |season_number, attribute|
    attribute.each do |value|
      if season == season_number
        if value["status"] == "Winner"
          whole_name = value["name"]
          name_array = whole_name.split
          first_name = name_array.first
        end
      end
    end 
  end
  first_name 
end

def get_contestant_name(data, occupation)
  whole_name = ""
  data.each do |season_number, attribute|
    attribute.each do |value|
      if value["occupation"] == occupation 
        whole_name = value["name"]
      end
    end 
  end
  whole_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_number, attribute|
    attribute.each do |value|
      if value["hometown"] == hometown 
        counter += 1 
      end
    end 
  end
  counter
end

def get_occupation(data, hometown)
  occupation = "" 
  data.each do |season_number, attribute|
    attribute.each do |value|
      if value["hometown"] == hometown 
        occupation = value["occupation"]
        break
      end
    end 
  end
  occupation
end

def get_average_age_for_season(data, season)
  counter = 0
  flt_age = 0
  tot_age = 0 
  avg_age = 0 
  data.each do |season_number, attribute|
    attribute.each do |value|
      if season == season_number
        flt_age = value["age"].to_f
        tot_age += flt_age
        counter += 1
        #binding.pry
      end
    end 
  end
  avg_age = (tot_age/counter)
  avg_age.round 
end