def get_first_name_of_season_winner(data, season)
  # code here
data.find{
  |k,d| k==season
}[1].find{
  |contestant|
  contestant["status"]=="Winner"
}["name"].split(" ")[0]

end

def get_contestant_name(data, occupation)
  # code here
  data.each{
    |season|
    season[1].each{
      |player|
      if player["occupation"]==occupation
        return player["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.values.flatten.count{|x| x["hometown"]==hometown}
end

def get_occupation(data, hometown)
  # code here
  data.values.flatten.find{|x| x["hometown"]==hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  season_ages = data.find{|k,d|k==season}[1]
  (season_ages.inject(0){|sum,n| sum + n["age"].to_f}/season_ages.length).round()
end
