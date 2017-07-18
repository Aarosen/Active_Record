class TasksController
  def initialize(input)
    @input = input[0]
    @view = TasksView.new
  end

  def menu(input, task)
    case @input 
    when "add" then add(task)
    when "index" then index
    when "delete" then delete(task.to_i)
    when "complete" then complete(task.to_i)
    end
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    tasks = Task.all  
    @view.index(tasks)
  end

  def add(task)
    tasks = Task.create(name: task)
    @view.create(tasks)
  end

  def delete(task_id)
    tasks = Task.all
    tasks.each_with_index do |task, index|
      task.destroy if index + 1 == task_id
    end
    @view.delete(Task.all)
  end

  def complete(task_id)
    tasks = Task.all
    tasks.each_with_index do |task, index|
      task.update(status: true) if index + 1 == task_id
    end
    @view.update(Task.all)
  end
end