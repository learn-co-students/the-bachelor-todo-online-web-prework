
def get_first_name_of_season_winner(data,season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |occupations|
      if occupations["occupation"] == occupation
        return occupations["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |season, contestant|
      contestant.each do |contestant_hash|
        if contestant_hash["hometown"] == hometown
          count +=1
        end
      end
    end
    count
end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  contestant_total = 0
data[season].each do |contestants|
  ages += (contestants["age"]).to_i
  contestant_total += 1
end
(ages / contestant_total.to_f).round(0)
end
  
  #Must change the "age" into an integer with to_i.  
  
  
  