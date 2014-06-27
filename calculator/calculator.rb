#calculator project
#MVP= input and operations

	puts "welcome to my calculator"

	# ask for input 1 
	puts "Please give me your first number"
	#Actually remember the input 1 
	number1 = gets.chomp.to_f
	#"what operation would you like to use?" (add,subtract,multiple,divide)
	
loop do
	puts "Would you like to plus,minus,times,or divide."
	operation = gets.chomp 
	#input 2
	puts "Please give me your second number"
	
	number2 = gets.chomp.to_f


	#perform operation
		if operation == "plus"
			puts "equals: #{number1+number2}"
			break
		elsif operation == "minus"
	 		puts "equals: #{number1-number2}" 
	 		break
		elsif operation == "times"
			puts "equals: #{number1*number2}"
			break
		elsif operation == "divide"
			puts "equals: #{number1/number2}"
			break
		else
			puts "you didnt choose an operation, try again"
		end
end
	puts "you're welcome"
