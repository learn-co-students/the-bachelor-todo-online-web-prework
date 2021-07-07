require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = nil
  data.each do |season_no, detail_hash|
    if season_no == season
      detail_hash.each do |att|
        if att["status"] == "Winner"
          first_name = att["name"].split(" ")[0]
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |att|
      if att["occupation"] == occupation
        return att["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |att|
      if att["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |att|
      if att["hometown"] == hometown
        return att["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  no_of_cont = 0
  tot_age = 0
  data.each do |season_no, contestants|
    if season_no == season
      contestants.each do |att|
        tot_age += att["age"].to_i
        no_of_cont += 1
      end
    end
  end

  average = tot_age.to_f / no_of_cont.to_f
  average.to_s[3].to_i >= 5 ? average.ceil : average.to_i
end
