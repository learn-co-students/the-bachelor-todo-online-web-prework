require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  
  winner_name = []
  data.each do |title, array|
    if title == season 
      array.each do |item|
        if item["status"] == "Winner"
          name = item["name"].split(" ")
          winner_name << name.first
        end
      end
    end
  end
  
  winner_name.join(" ")
end


def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each do |title, array|
    array.each do |item|
      if item["occupation"] == occupation
         name = item["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  
  counter = 0
  data.each do |title, array|
    array.each do |item|
      if item["hometown"] == hometown
        counter += 1
      end
    end 
  end 
  counter
end

def get_occupation(data, hometown)
  # code here
  
  job = []
  data.each do |title, array|
    array.each do |item|
      if item["hometown"] == hometown 
         job << item["occupation"]
      end 
    end
  end
  job[0]
end

def get_average_age_for_season(data, season)
  # code here
  number = []
  data.each do |title, array|
    if title == season 
      array.each do |item|
        number << item["age"].to_i
      end
    end
  end
  val = number.inject do |sum, num|
    sum + num
  end
  (val.to_f / number.length).round
end
