def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |hash_season, contestants_array|
    if hash_season == season
      contestants_array.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split
          winner = winner[0]
        end
      end
    end
end
winner
end

def get_contestant_name(data, occupation)
    data.each do |hash_season, contestant_array|
      contestant_array.each do |contestant|
       if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
    person = []
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        person << hash_season
      end
    end
  end
  person.length
end


def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |hash|
      hash.each do |k,v|
        if v == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end

  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round

end
