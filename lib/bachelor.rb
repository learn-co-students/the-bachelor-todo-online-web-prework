require "pry"
def get_first_name_of_season_winner(data, season)
	fname = []
	data.each do |season_num,value|
	  if season == season_num.to_s
		  # puts "#{season_num}: #{value}"
		 	value.each do |key|  #value is array
			#  puts "#{key}"
				key.each do |k,v|  #key is hash
					# puts "#{k}: #{v}"
					if v == "Winner"
						#  binding.pry
						# puts "#{key[:name]}"
						fname = key["name"].split(" ")
						# fname[0]
						# puts "#{fname[0]}"
						# binding.pry
					end
	  		end
			end
		end
	end
	fname[0]
end

def get_contestant_name(data, occupation)
	c_name = " "
	data.each do |season_num,value|
			# puts "#{value}"
		value.each do |key| #value is array
			# puts "#{key}"
			key.each do |k,v| #key is hash
				# puts "#{k} #{v}"
				if v == occupation.to_s
					puts "#{v}"
					# puts "#{key[:name]}"
					c_name = key["name"]
					# fname[0]
					# binding.pry
				end
			end
		end
	end
	c_name
end


def count_contestants_by_hometown(data, hometown)
  count = 0
	data.each do |season_num,value|
			# puts "#{value}"
			value.each do |key| #value is array
				# puts "#{key}"
				key.each do |k,v| #key is hash
					# puts "#{k} #{v}"
					if v == hometown
						# puts "#{v}"
						count += 1
						# puts "#{count}"
					end
				end
			end
		end
	count
end


def get_occupation(data, hometown)
	job = []
	data.each do |season_num,value|
			# puts "#{value}"
		value.each do |key| #value is array
			# puts "#{key}"
			key.each do |k,v| #key is hash
				# puts "#{k} #{v}"
				if v == hometown
						# job << key[:occupation]
            job << key["occupation"]
				end
			end
		end
	end
	job[0]
end


def get_average_age_for_season(data, season)
  count = 0
	avg_age = 0
	sum = 0
	data[season].each do |person|
		sum += person["age"].to_i
		count += 1
	end
	ave_age = (sum/count.to_f).round
end
