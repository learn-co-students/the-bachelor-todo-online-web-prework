require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |bac_season, cont|
    if bac_season.to_s == season
      cont.each do |data|
        data.each do |category, info|
          if category == "status" && info == "Winner"
            name = data["name"].split(" ")
            winner_name = name[0]
          end
        end
      end
    end
  end
  winner_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |bac_season, cont|
    cont.each do |data|
      data.each do |category, info|
        if category == "occupation" && info == occupation
          name = data["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |bac_season, cont|
    cont.each do |data|
      data.each do |category, info|
        if category == "hometown" && info == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |bac_season, cont|
    cont.each do |data|
      data.select do |category, info|
        if info == hometown
          occupation << data["occupation"]
        end
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  age = []
  data.each do |bac_season, cont|
    if bac_season == season
      cont.each do |data|
        data.each do |category, info|
          if category == "age"
            age << info.to_i
          end
        end
      end
    end
  end
  (age.inject {|sum, el| sum + el}.to_f / age.size).round
end
