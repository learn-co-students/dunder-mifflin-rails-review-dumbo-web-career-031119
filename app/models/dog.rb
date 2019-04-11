class Dog < ApplicationRecord

  #has_many :employees

  def employees
    Employee.all.select { |employee| employee.dog == self}
  end
end
