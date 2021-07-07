def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestants_hash|
        if contestants_hash["status"] == "Winner"
          return contestants_hash["name"].split(" ")[0]
        end
      end
    end
  end
end	

def get_contestant_name(data, occupation)
  data.each do |season_num, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["occupation"] == occupation
        return contestants_hash["name"]
      end
    end
  end
end
def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_num, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season_num, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        return contestants_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number_of_contestants = 0
  total_age = 0
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestants_hash|
        number_of_contestants += 1
        total_age += contestants_hash["age"].to_i
      end
    end
  end
  average_age = total_age.to_f / number_of_contestants.to_f
  average_age.round
end