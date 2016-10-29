require './todo'
require './todos_list'

todo1 = Todo.new("Check out RailsGuides", false, "high")
todo2 = Todo.new("Read 'Hitchhiker's Guide to the Galaxy'", false, "low")
todo3 = Todo.new("Watch 'Game of Thrones' because the books are just too long", true, "low")
todos = [todo1, todo2, todo3]

todo_list = TodosList.new(todos)
todo_list.list_high_priority
puts "\n"
todo_list.list_low_priority
