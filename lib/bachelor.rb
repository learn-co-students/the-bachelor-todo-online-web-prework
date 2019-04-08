require 'pry'

=begin Sample data
{
  "season 19":[
      {
         "name":"Ashley Iaconetti",
         "age":"26",
         "hometown":"Great Falls, Virginia",
         "occupation":"Nanny/Freelance Journalist",
         "status":""
      },
}      
=end

# Get data for testing
data = JSON.parse(File.read('spec/fixtures/contestants.json'))


# Find first name of season winner based on input season
def get_first_name_of_season_winner(data, season)
  data.fetch(season).each do |person| 
    return person["name"].split.first if person["status"] == "Winner"
  end
end

# Find contestant name based on input occupation
def get_contestant_name(data, occupation)
  data.each do |season, person| 
    person.each do |person_data|
      return person_data["name"] if person_data["occupation"] == occupation
    end
  end
end

# Count how many contestants are from input hometown
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, person| 
    person.each do |person_data|
      if person_data["hometown"] == hometown
        counter += 1
      end 
    end
  end
  counter
end

# Return occupation of first contestant from input hometown
def get_occupation(data, hometown)
  data.each do |season, person| 
    person.each do |person_data|
      return person_data["occupation"] if person_data["hometown"] == hometown
    end
  end    
end

# Calculate average age of contestants for input season
def get_average_age_for_season(data, season)
  age_array = []
  average = 0
  
  # Get ages
  data.fetch(season).each do |person| 
    age_array << person["age"].to_f
  end 

  # Average and round ages
  average = (age_array.sum / age_array.length).round
end