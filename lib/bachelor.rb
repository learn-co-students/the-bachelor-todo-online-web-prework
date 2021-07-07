def get_first_name_of_season_winner(data, season)
  data.each do |year, contestant|
    if year == season
      contestant.each do |who|
        if who["status"] == "Winner"
          return who["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |year, contestant|
    contestant.each do |who|
      if who["occupation"] == occupation
        return who["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |year, contestant|
    contestant.each { |who| hometown_counter += 1 if who["hometown"] == hometown }
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |year, contestant|
    contestant.each do |who|
      if who["hometown"] == hometown
        return who["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  avg_arr = []
  data.each do |year, contestant|
    if year == season
      contestant.each { |who| avg_arr << who["age"].to_i }
    end
  end
  (avg_arr.reduce(:+).to_f / avg_arr.size).round
end
