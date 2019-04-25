require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = [ ]
  data.fetch(season).each do |person|
    if person["status"] == "Winner"
      winner << person["name"]
    end
  end  
  return winner.join.split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, all|
    all.each do |ind, nunya|
      if ind["occupation"] == occupation
        return ind["name"]
      end
    end
  end  
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, all|
    all.each do |ind, nunya|
      if ind["hometown"] == hometown
        counter += 1
      end
    end
  end 
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, all|
    all.each do |ind, nunya|
      if ind["hometown"] == hometown
        return ind["occupation"]
      end
    end
  end
end

class Array
  def average
    inject(&:+) / size
  end
end  

def get_average_age_for_season(data, season)
  ages =[ ]
  data.fetch(season).each do |person|
    ages << person["age"]
  
  end
  return ages  
end
