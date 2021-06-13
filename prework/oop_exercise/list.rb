class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def number_of_incomplete
    return incomplete_task_names.length
  end

  def delete_complete_tasks
    remaining_tasks = []
    @tasks.each do |task|
      unless task.complete
        remaining_tasks << task
      end  
    end
    @tasks = remaining_tasks
  end

  def sort_by_priority
    @tasks.sort_by! {|task| task.priority}
  end


end