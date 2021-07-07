require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |seasonName, contestantArr|
    if season == seasonName
      contestantArr.each do |attribute, values|
        if attribute["status"] == "Winner"
          winnerFullArr = attribute["name"].split
          winner = winnerFullArr[0]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  woman = ""
  data.each do |seasonName, contestantArr|
    contestantArr.each do |attribute, values|
      if attribute["occupation"] == occupation
        woman = attribute["name"]
      end
    end
  end
  woman
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasonName, contestantArr|
    contestantArr.each do |attribute, values|
      if attribute["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |seasonName, contestantArr|
    contestantArr.each do |attribute, values|
      if attribute["hometown"] == hometown
        occupation = attribute["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  averageAge = nil
  ageArr = []

  data.each do |seasonName, contestantArr|
    if season == seasonName
      contestantArr.each do |attribute, values|
        ageArr << attribute["age"].to_f
      end
    end
  end

  averageRaw = 0
  ageArr.each do |num|
    averageRaw = (averageRaw + num).to_f
  end
  averageRaw = averageRaw / ageArr.length
  averageAge = averageRaw.round
end
