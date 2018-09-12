def get_first_name_of_season_winner(data, season)
  contestants = data[season]
  contestants.find {|person| person["status"] == "Winner"}["name"].split[0]
end                                                                          # => :get_first_name_of_season_winner

def get_contestant_name(data, occupation)
  data.values.flatten.find {|person| person["occupation"] == occupation}["name"]
end                                                                               # => :get_contestant_name

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.count {|person| person["hometown"] == hometown}
end                                                                    # => :count_contestants_by_hometown

def get_occupation(data, hometown)
  data.values.flatten.find {|person| person["hometown"] == hometown}["occupation"]
end                                                                                 # => :get_occupation

def get_average_age_for_season(data, season)
  contestants = data[season]
  (contestants.map {|person| person["age"].to_i}.reduce(:+).to_f / contestants.size).round
end                                                                                         # => :get_average_age_for_season
