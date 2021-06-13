class Task
  
  def initialize(name,priority)
    @name = name
    @priority = priority
    @complete = false
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    if @complete
      @complete = false
    else
      @complete = true
    end
  end

  def priority
    return @priority
  end
  

end