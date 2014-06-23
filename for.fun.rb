

	puts "i am just messing around with ruby"		
loop do
	
	sleep 1
	puts "so do you miss me? yes or no?"

	missing = gets.chomp 
	
	if missing == "yes"
		puts "good i miss you too"
	elsif missing == "no"
		puts "wow that's rude"
	else missing == "exit"
		puts "see im cool"
		break
	end

	#show my skills 

	puts "Now just to show you how cool i am answer the question again with the oposite 
	answer. when you saw both answers write exit"
	sleep 1
end

	puts "cool huh?"