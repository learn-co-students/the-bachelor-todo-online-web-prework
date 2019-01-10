def get_first_name_of_season_winner(data, season)
  temp_name = ""
  data.each do |year, contestant_info|
    if year == season
      contestant_info.each do |contestant|
        contestant.each do |stat, value|
          if stat == "name"
            temp_name = value
          elsif stat == "status" && value == "Winner"
            return temp_name.split[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  temp_name = ""
  data.each do |year, contestant_info|
    contestant_info.each do |contestant|
      contestant.each do |stat, value|
        if stat == "name"
          temp_name = value
        elsif stat == "occupation" && value == occupation
          return temp_name
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |year, contestant_info|
    contestant_info.each do |contestant|
      contestant.each do |stat, value|
        if stat == "hometown" && value == hometown
          count += 1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |year, contestant_info|
    contestant_info.each do |contestant|
      contestant.each do |stat, value|
        if stat == "hometown" && value != hometown
          break
        elsif stat == "occupation"
          return value
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_years = 0
  contestant_count = 0
  data.each do |year, contestant_info|
    if year == season
      contestant_info.each do |contestant|
        contestant.each do |stat, value|
          if stat == "age"
            total_years = total_years + value.to_i
            contestant_count += 1
          end
        end
      end
    end
  end
  puts total_years
  puts contestant_count
  return ((total_years/contestant_count.to_f).round)
end
