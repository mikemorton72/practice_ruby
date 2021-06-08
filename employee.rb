#model an employee using a class
class Employee
  def initialize(input_first_name, input_last_name, input_active, input_salary)
    @first_name = input_first_name
    @last_name = input_last_name
    @active = input_active
    @salary = input_salary
  end
  
  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end
end

employee_1 = Employee.new("Majora","Carter",true,80_000)
employee_1.print_info


employee_2 = Employee.new("Danilo", "Campos", false, 70_000)
employee_2.print_info

