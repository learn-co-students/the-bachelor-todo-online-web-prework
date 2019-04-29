require "pry"

def get_first_name_of_season_winner(data, season)
  win=data[season].index{|girls| girls["status"]=="Winner"}
  #data[season] just returns the array of girls belonging to that season
  #finding index of the girl that was the winner
  return data[season][win]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  occ=nil
  data.each do |season,girls|
    occ=girls.index{|attribute| attribute["occupation"]==occupation}
    #using the squiaggly brackets iterates over each hash in the "girls"
    #array to find the index of the girl that matches the condition
    return data[season][occ]["name"] if occ!=nil
    #the occ!=nil is to make sure the method only returns the name when
    #the index "occ" has been found (i.e. not nil)
  end
end


def count_contestants_by_hometown(data, hometown)
  count=0
  data.each do |season,girls|
    girls.each do |attribute|
      count+=1 if attribute.values.include?(hometown)
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, girls|
    home=girls.index{|i| i["hometown"]==hometown}
    return data[season][home]["occupation"] if home!=nil
    #it works to use return over here because it returns the first
    #instance hwere the index matches and then the method stops there
  end
end

def get_average_age_for_season(data, season)
  ages=[]
  data[season].each do |girls|
    ages.push(girls["age"].to_i)
  end
  return (ages.sum/ages.size.to_f).round

end
