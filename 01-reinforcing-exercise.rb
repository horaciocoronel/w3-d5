# Create a Task class with a description and due_date (both strings). Define an initialize method as well as "reader" and "writer" methods for those attributes. Try creating three instances of this class and test out the reader and writer methods.

class Task
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def description(description)
    @description = description
  end

  def self.add(description, due_date)
    @@tasks << Task.new(description, due_date)
  end




end

# Task.add('Pick up laundry', '2017-09-30')
# Task.add('Buy bananas', '2017-10-02')
# Task.add('Pay rent', '2017-10-01')
# Task.add('Movie with friends', '2017-10-02')
# puts Task.all.inspect

# Create a TodoList class with a tasks array (which will contain instances of the Task class). Create an initialize method and an add_task method that allows you to pass in an instance of your Task class. Try creating a todo list and adding your three tasks to it.

class TodoList < Task
  @@tasks = []
  def initialize(description, due_date)
    super(description, due_date)
  end
  def self.add_task(description, due_date)
    @@tasks << Task.new(description, due_date)
  end

  def self.all
    return @@tasks
  end
end



TodoList.add_task('Pick up laundry', '2017-09-30')
TodoList.add_task('Buy bananas', '2017-10-02')
TodoList.add_task('Pay rent', '2017-10-01')
TodoList.add_task('Movie with friends', '2017-10-02')
puts TodoList.all.inspect
