class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @dog = @employee.dog
  end

  def edit
    @employee = Employee.find(params[:id])
    @dog = @employee.dog
    @dogs = Dog.all
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(emp_params)
    redirect_to @employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee.create(emp_params)
    redirect_to @employee
  end

  private

  def emp_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end
end
