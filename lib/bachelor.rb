require 'pry'


def get_first_name_of_season_winner(data, season)
  winning_contestant = ""

  data.each do |season_label, contestants|
    if season_label == season
      contestants.each do |contestant_details|
        if contestant_details["status"] == "Winner"
          winning_contestant = contestant_details["name"]
        end
      end
    end
  end

  winning_contestant = winning_contestant.split[0]
end

def get_contestant_name(data, occupation)
  contestant_name = ""

  data.each do |season_label, contestants|
      contestants.each do |contestant_details|
        if contestant_details["occupation"] == occupation
          contestant_name = contestant_details["name"]
        end
      end
  end

  contestant_name

end

def count_contestants_by_hometown(data, hometown)
  contestant_count = 0

  data.each do |season_label, contestants|
      contestants.each do |contestant_details|
        if contestant_details["hometown"] == hometown
          contestant_count += 1
        end
      end
  end

  contestant_count


end

def get_occupation(data, hometown)
  # code here
  contestant_occupation = ""

  contestant = data.each do |season_label, contestants|
      contestants.each do |contestant_details|
        if contestant_occupation == ""
          if contestant_details["hometown"] == hometown
            contestant_occupation = contestant_details["occupation"]
          end
        end
      end
  end

  contestant_occupation

end

def get_average_age_for_season(data, season)
  season_ages = []

  data.each do |season_label, contestants|
    if season_label == season
      contestants.each do |contestant_details|
          season_ages << contestant_details["age"].to_f
      end
    end
  end

  mean = season_ages.sum(0.0) / season_ages.length

  mean.round

end
