#model an employee using a class
class Employee
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @salary = input_options[:salary]
  end
  
  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  #reader/getter
  def first_name
    @first_name #ruby has implicit return. The last line of the function is returned if no return statement is included
  end

  #writer/setter
  def first_name=(input_first_name)
    @first_name = input_first_name
  end

end

employee_1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80_000, active: true})
employee_1.print_info
employee_1.give_annual_raise
employee_1.print_info
p employee_1.first_name
employee_1.first_name = "Jamie" #weird syntax for a function
p employee_1.first_name


employee_2 = Employee.new(first_name: "Danilo", last_name: "Campos", active: false, salary: 70_000) #ruby can interpret a hash input wihtout curly braces...
employee_2.print_info

