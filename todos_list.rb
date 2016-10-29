class TodosList
  attr_accessor :todos

  def initialize(todos)
    @todos = todos
  end

  def list_all_todos
    @todos.each do |todo|
      puts todo.content
    end
  end

  def list_complete_todos
    puts "I have already accomplished:"
    @todos.each do |todo|
      if todo.complete?
        puts todo.content
      end
    end
  end

  def list_incomplete_todos
    puts "I still need to:"
    @todos.each do |todo|
      if !todo.complete?
        puts todo.content
      end
    end
  end

  def list_high_priority
    puts "High priorities:"
    @todos.each do |todo|
      if todo.priority == "high"
        if todo.complete?
          puts "#{todo.content} - complete"
        else
          puts "#{todo.content} - incomplete"
        end
      end
    end
  end

  def list_low_priority
    puts "Low priorities:"
    @todos.each do |todo|
      if todo.priority == "low"
        if todo.complete? 
          puts "#{todo.content} - complete"
        else
          puts "#{todo.content} - incomplete"
        end
      end
    end
  end
end
