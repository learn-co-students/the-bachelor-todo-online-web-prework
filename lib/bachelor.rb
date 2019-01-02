require'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |k,data_hash|
    season=k
    data_hash.each  do   |data|
        data.each   {|contest |    }
        binding.pry
      if data.include?("winner")
        return data[name]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
