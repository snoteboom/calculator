#######
##To Do List #
######

# store
task_list = []
#let us know when the app should store
run_app = true

def print_tasks(task_list)
	if task_list.length > 0
		task_list.each_with_index do |task, index|
			puts "#{index + 1}.) #{task[:name]} at #{task[:location]},should be completed by: #{task[:date]}, priority: #{task[:priority]}"
		end
	else
		puts "there are no tasks yet!"
	end
end
def create_task(task_list)
	task = {}
	puts "please insert a task name."
	task [:name] = gets.chomp
	puts "please insert a completion date."
	task [:date] = gets.chomp
	puts "where are you doing this task?"
	task [:location] = gets.chomp
	puts " what is the priority? high medium or low"
	task [:priority] = gets.chomp

	task_list << task 
end
def delete_task(task_list)
	puts "what task would you like to delete?"
	task_to_delete = gets.chomp.to_i
	task_list.delete_at(task_to_delete -1)
end

while run_app #to keep running app til until false
	
	puts "welcome to your todo list"
	puts "What would you like to do? hit 1 to display tasks, hit 2 to enter a task, hit 3 to delete a task, hit 4 to exit"
	#get what the user wants to do 
	new_task = gets.chomp 
	#check user choice

	if new_task == "1"
		print_tasks(task_list)
	elsif new_task == "2"
		create_task(task_list)
		print_tasks(task_list)
	elsif new_task == "3"
		delete_task(task_list)
		print_tasks(task_list)
	else new_task == "4"
		puts "fine, i didnt like you anyway." 
		run_app = false
	end

end
