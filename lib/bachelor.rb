require "pry"

# data structure
#{
#   "season 19":[
#       {
#         "name":"Ashley Iaconetti",
#         "age":"26",
#         "hometown":"Great Falls, Virginia",
#         "occupation":"Nanny/Freelance Journalist",
#         "status":""
#       },
#       {
#         "name":"Becca Tilley",
#         "age":"26",
#         "hometown":"Shreveport, Louisiana[b]",
#         "occupation":"Chiropractic Assistant",
#         "status":""
#       },
  #   ]
  # }


def get_first_name_of_season_winner(data, season)
  data.each do |season_id, contestants|
    if season == season_id
      contestants.each do |key|
        if key["status"] == "Winner"
          return key["name"].split.first
        end
      end
    end
  end
  #binding.pry    
end

def get_contestant_name(data, occupation)
  data.each do |season_id, contestants|
    contestants.each do |key|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
  #binding.pry
end

def count_contestants_by_hometown(data, hometown)
  town_list = []
  counter = 0
  data.each do |season_id, contestants|
    contestants.each do |key|
      if key["hometown"] == hometown
        if town_list.include?(hometown) == FALSE
          town_list<< hometown
          counter += 1
        else
          counter += 1
        end
      end
    end
  end
  counter
  #binding.pry
end

def get_occupation(data, hometown)
  data.each do |season_id, contestants|
    contestants.each do |key|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
  #binding.pry
end

def get_average_age_for_season(data, season)
  age_list = []
  data.each do |season_id, contestants|
    if season == season_id
      contestants.each do |key|
        age_list<< key["age"].to_i
      end
    end
  end
  #would like to use: age_list.sum / age_list.length, but that is for ruby 2.4,and this is 2.3?
  sum = age_list.inject(0){ |sum, x| sum + x }
  average = sum.to_f / age_list.length
  average.round
  #binding.pry
end
