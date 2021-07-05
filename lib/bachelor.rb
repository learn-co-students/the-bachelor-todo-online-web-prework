require 'pry'
def get_first_name_of_season_winner(data, season)
  namae = " "
  nameholder = " "
  data.each do |seasonal, arri|
    if season == seasonal
      arri.each do |individual_data|
        individual_data.each do |data_type, value|
          if data_type == "name"
            nameholder = value
          end
          if data_type == "status"
            if value == "Winner"
              namae = nameholder
            end 
          end 
        end
      end
    end 
  end
  name_array = namae.split(" ")
  first_name = name_array.first
  first_name
end
#=================================================
def get_contestant_name(data, occupation)
  namae = " "
  nameholder = " "
  data.each do |seasonal, arri|
    arri.each do |individual_data|
      individual_data.each do |data_type, value|
        if data_type == "name"
          nameholder = value
        end
        if data_type == "occupation"
          if value == occupation
            namae = nameholder
          end 
        end 
      end
    end 
  end
  namae
end
#=================================================
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasonal, arri|
    arri.each do |individual_data|
      individual_data.each do |data_type, value|
        if data_type == "hometown"
          if value == hometown
            counter += 1
          end 
        end 
      end
    end 
  end
  counter
end
#=================================================
def get_occupation(data, hometown)
  occ = " "
  data.each do |seasonal, arri|
    arri.each do |individual_data|
      individual_data.each do |data_type, value|
        if data_type == "hometown"
          if value == hometown
            individual_data.each do |data_type1, value1|
              if data_type1 == "occupation"
                if occ == " "
                  occ = value1
                end
              end 
            end 
          end 
        end 
      end
    end 
  end
  occ
end
#=================================================
def get_average_age_for_season(data, season)
  counter = 0.0
  contestant_counter = 0.0
  data.each do |seasonal, arri|
    if season == seasonal
      arri.each do |individual_data|
        individual_data.each do |data_type, value|
          if data_type == "age"
            counter += value.to_f
            contestant_counter += 1.0
          end
        end
      end 
    end
  end 
 average = counter / contestant_counter
 average.round
end
