def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]["name"].split(" ")[0]

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each_with_index do |contestant, index|
      if info[index]["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each do |season, info|
    info.each_with_index do |contestant, index|
      if info[index]["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  contestant_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each_with_index do |contestant, index|
      if info[index]["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each {|x| ages << x["age"].to_i}
  # Calculate average
  (ages.sum / ages.length.to_f).round
end
