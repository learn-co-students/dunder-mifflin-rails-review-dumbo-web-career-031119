class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    find_by_id
    @dog = Dog.find(@employee.dog_id)
  end

  def new
    @employee = Employee.new
    @attributes = attributes_hash
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    redirect_to @employee
  end

  def edit
    find_by_id
    @attributes = attributes_hash
    @dogs = Dog.all
  end

  def update
    find_by_id.update(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    redirect_to find_by_id
  end

  private
  def find_by_id
    @employee = Employee.find(params[:id])
  end

  def attributes_hash
    {first_name: "First Name", last_name: "Last Name", alias: "Alias", title: "Title", office: "Office", img_url: "Image URL"}
  end
end
