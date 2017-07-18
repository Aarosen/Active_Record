class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(all)
    all.each_with_index do |x,index|
      output = x.status == true ? 'x': ''
      p "#{index+1} [#{output}] " + x.name
    end
  end


  def create(tasks)
    p tasks
  end

  def delete(tasks)
    tasks.each_with_index do |x,index|
      output = x.status == true ? 'x': ''
      p "#{index+1} [#{output}] " + x.name
    end
  end

  def update(tasks)
    tasks.each_with_index do |x,index|
      output = x.status == true ? 'x': ''
      p "#{index+1} [#{output}] " + x.name
    end
  end

	def error
	end
end
