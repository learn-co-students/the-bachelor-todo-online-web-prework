def get_first_name_of_season_winner(data, season)
  # code here
  #go through contestants 
  data[season].each do |contestants|
    #if contestant status == winner 
    if contestants["status"].downcase == "winner"
    
    #return name 
    return contestants["name"].split(" ").first 
    
    end 
  
  end 
  
end

def get_contestant_name(data, occupation)
  # code here
  #go through seasons 
  data.each do |season, contestants|
    
    #go through contestants
    contestants.each do |contestants|
      
      #check occupation
      if contestants["occupation"] == occupation
        
        #return name 
        return contestants["name"]
      end 
    end 
  end 
  
end

def count_contestants_by_hometown(data, hometown)
  # code here
  #set counter variable = 0 
  counter = 0 
  
  #go through seasons
  data.each do |season, contestants|
    
    #go through contestants
    contestants.each do |contestants|
      
      #check hometown
      if contestants["hometown"] == hometown
        
        #increment counter
        counter +=1 
      end 
    end 
  end 
  
  #return counter
  counter
end

def get_occupation(data, hometown)
  # code here
  #go through seasons
  data.each do |season, contestants|
    
    #go through contestants
    contestants.each do |contestants|
      
      #check hometown 
      if contestants["hometown"] == hometown
        
        #retrun occupation
        return contestants['occupation']
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  # code here
  
  #collect and average ages 
  
  total_age = 0 
  
  number_of_contestants = 0 
  
  #go through seasons 
  data[season].each do |contestants|
    
    #convert age key to Integer
    total_age += (contestants["age"]).to_i 
    
    #increment contestants
    number_of_contestants += 1 
  end 
  
  #return average age with expected rounding 
  (total_age / number_of_contestants.to_f).round
  

  
end
