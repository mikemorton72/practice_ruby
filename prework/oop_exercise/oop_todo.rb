require_relative "list"
require_relative "task"

# Create list
list = List.new #this creates a new list object contaning an empty array instance variable @tasks

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat",10)) #this creates a new task object and appends it into the @tasks list of the list object
list.add_task(Task.new("Take out trash",7))
list.add_task(Task.new("Mow the lawn",4))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name #this calls the tasks method of the list object which returns an array of tasks, [1] pulls the second task in the array, .name method returns the name of that task. 
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete! #this calls the .complete! method for task #1 and changes it's instance variable @complete to true.

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names

#my additions
list.tasks[0].toggle_complete!
puts "undo last completion"
puts list.incomplete_task_names
list.tasks[0].toggle_complete!
puts list.number_of_incomplete
list.delete_complete_tasks
p list
list.sort_by_priority
p list


#Answer the following questions: a. In your opinion, what advantages does oop_todo have over procedural_todo? b. In your opinion, what advantages does procedural_todo have over oop_todo?
#a. OOP is much more flexible and will allow you to reuse the list & task object structure to create more than one list/tasks without copy pasting code.
#b. Procedural is more clear at a glance because it is all located within one file and can be read and understood from top to bottom.

