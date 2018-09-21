def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |cont_hash|
        if cont_hash["status"] == "Winner"
          return cont_hash["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
    data.each do |season_num, contestants|
      contestants.each do |cont_hash|
        if cont_hash["occupation"] == occupation
          return cont_hash["name"]
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  townCount = "0"
    data.each do |season_num, contestants|
      contestants.each do |cont_hash|
        if cont_hash["hometown"] == hometown
          count = townCount.to_i + 1
          townCount = count.to_s
        end
      end
    end
    return townCount.to_i
end

def get_occupation(data, hometown)
     data.each do |season_num, contestants|
      contestants.each do |cont_hash|
        if cont_hash["hometown"] == hometown
          return cont_hash["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
  ages = []
  total = 1
     data.each do |season_num, contestants|
       if season_num == season
          contestants.each do |cont_hash|
              ages << cont_hash["age"]
          end
       end
      end
    ages.each {|i| total += i.to_i}
   average = total.to_f / ages.length.to_f
   return average.round()
end


data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

get_first_name_of_season_winner(data, "season 30")