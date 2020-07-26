class DogsController < ApplicationController
  before_action :get_dogs, only: %i[index show]

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
  end
end

private

def get_dogs
  @dogs = Dog.all
end
