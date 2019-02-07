require 'pry'
def get_first_name_of_season_winner(data, season)
  #data is everything, season is the season number
  final = ""
  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info

if season == season_num
    info.map do |hash|
    if hash["status"] == "Winner"
      first_name = hash["name"]
       final << first_name.split(" ").first

#       binding.pry
    end

  end
end
  end
final
end

def get_contestant_name(data, occupation)
  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info
    info.map do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end



def count_contestants_by_hometown(data, hometown)
  num_of_ppl = 0
  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info
    info.map do |hash|
      if hash["hometown"] == hometown
        num_of_ppl += 1
      end
    end
  end
  num_of_ppl
end

def get_occupation(data, hometown)
  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info
    info.map do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0


  data.map do |season_num, info|
    # season_num is the season 30, info is all the season info
    if season == season_num
     data[season_num].each do |person|

       age_total += person["age"].to_f

end

      return (age_total /data[season_num].count).round

end
end
end
