require "pry"

def get_first_name_of_season_winner(data, season)
	winner_name = ""
	data.each do |season_key,contestant_info|
		if season == season_key
			contestant_info.each do |raw_data|
				raw_data.each do |tag,value|
					if value=="Winner"
						winner_name = raw_data["name"]
					else
						nil
					end
				end
			end
		else
			nil
		end
	end
	a = winner_name.split
	final_winner = a[0]
	final_winner	
end

def get_occupation(data, hometown)
	job = ""
	data.each do |season_key,contestant_info|
		contestant_info.find do |raw_data|
			raw_data.find do |tag,value|
				if value==hometown
					job = raw_data["occupation"]
				else
					nil
				end
			end
		end
	end
	job
end

def count_contestants_by_hometown(data, hometown)
	counter = 0
	data.each do |season_key,contestant_info|
		contestant_info.each do |raw_data|
			raw_data.each do |tag,value|
				if value==hometown
					counter += 1
				else
					nil
				end
			end
		end
	end
	counter
end

def get_contestant_name(data,occupation)
	ladyName = ""
	data.each do |season_key,contestant_info|
		contestant_info.each do |raw_data|
			raw_data.each do |tag,value|
				if value==occupation
					ladyName = raw_data["name"]
				else
					nil
				end
			end
		end
	end
	ladyName
end

def count_contestants_by_hometown(data, hometown)
	counter = 0
	data.each do |season_key,contestant_info|
		contestant_info.each do |raw_data|
			raw_data.each do |tag,value|
				if value==hometown
					counter += 1
				else
					nil
				end
			end
		end
	end
	counter
end

def get_average_age_for_season(data, season)
	ages = []
	age_total = 0
	data.each do |season_key,contestant_info|
		if season == season_key
			contestant_info.each do |raw_data|
				raw_data.each do |tag,value|
					if tag=="age"
						ages << value.to_i
						age_total += value.to_f
					else
						nil
					end
				end
			end
		else
			nil
		end
	end
	age_avg = age_total / ages.size
	age_avg.round(0)
end

