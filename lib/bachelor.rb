require 'pry'

#####
#####

def get_first_name_of_season_winner(data_set, season)
  winner_first_name = ""

  data_set.each {|season_name, contestants|
    if season == season_name
      contestants.each {|person|
        if person["status"] == "Winner"
          winner_first_name = person["name"].split(" ").first
        end
      }
    end
  }

  winner_first_name
end

#####
#####

def get_contestant_name(data, occupation)
# returns the name of the women with a certain occupation
  name = ""

  data.each {|season_name, contestants|
    contestants.each {|person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    }
  }

  name
end

#####
#####

def count_contestants_by_hometown(data, hometown)
  # count contestants by each hometown

  ht_count = 0

  data.each {|season_name, contestants|
    contestants.each {|person|
      if person["hometown"] == hometown
        ht_count += 1
      end
    }
  }

  ht_count
  # code here
end

def get_occupation(data, hometown)
  # return occupation by hometown
  occupation = ""
    data.each {|season_name, contestants|
      contestants.each {|person|
        if person["hometown"] == hometown
          occupation = person["occupation"]
          break
        end
      }
    }

  occupation
end

def get_average_age_for_season(data, season)
  ages = 0
  contestant_count = 0

  data.each {|season_name, contestants|
    if season_name == season
      contestants.each {|person|
        ages += person["age"].to_i
        contestant_count += 1
      }
    end
  }

  avg_age = ages.to_f / contestant_count.to_f
  avg_age.round
end
