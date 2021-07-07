require 'pry'

def get_first_name_of_season_winner(data, season)
  arr = []
  data[season].each do |x|
  if  x["status"] == "Winner"
    x["name"].split(" ").each {|y| arr << y}
    return arr[0]
  end
end
end

def get_contestant_name(data, occupation)
  data.each do
    |season, parti| parti.each do
      |x| if x["occupation"] == occupation
          return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do
    |season, parti| parti.each do |x|
      count += 1 if x["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do
    |season, parti| parti.each do
      |x| return x["occupation"] if x["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  tota = 0
  data.each do
    |seaso, data| if seaso == season
      data.each do
        |x| num = x["age"].to_f
        count += num
        tota += 1
      end
  end
end
(count/tota).round
end
