#######
##To Do List #
######

# store
task_list = ["apples","pears","leaves"]
#let us know when the app should store
run_app = true
def print_list (task_list)
	task_list.each_with_index do |task,i|
		puts "#{1+i}. #{task}" 
	end
end

while run_app #to keep running app til until false
	
	puts "welcome to your todo list"
	puts "What would you like to do? hit 1 to display tasks, hit 2 to enter a task, hit 3 to delete a task, hit 4 to exit"
	#get what the user wants to do 
	choice = gets.chomp 
	#check user choice

	if choice == "1"
		print_list(task_list)
	elsif choice == "2"
		puts "what task would you like to add?"
		new_task = gets.chomp
		task_list << new_task
	elsif choice == "3"
		print_list(task_list)
		puts "what task # would you like to delete ?"
		task_to_delete = gets.chomp.to_i
		task_list.delete_at(task_to_delete-1)
	else choice == "4"
		puts "fine, i didnt like you anyway." 
		run_app = false
	end

end
