require 'pry'

def get_first_name_of_season_winner(hash, season)
  hash.each do |k,v|
    if k == season
      v.each do |key|
      if key["status"] == "Winner"
          return key["name"].split(' ')[0]
      end
      end
    end
  end
end

def get_contestant_name(hash, occupation)
  hash.each do |k,v|
      v.each do |person|
        if person["occupation"] == occupation
          return person["name"]
        end
      end
    end
  end


def count_contestants_by_hometown(hash, hometown)
  counter = 0
    hash.each do |k,v|
      v.each do |person|
        if person["hometown"] == hometown
          counter += 1
        end
      end
    end
  counter
end

def get_occupation(hash, hometown)
    hash.each do |k,v|
      v.each do |person|
        if person["hometown"] == hometown
          return person["occupation"]
        end
      end
    end
end

def get_average_age_for_season(hash, season)
  out = 0
  count = 0
  hash.each do |k,v|
    if k == season
      v.each do |person|
        count += 1 
        out += person["age"].to_f
      end
    end
  end
  out = out/count
  out.round
end