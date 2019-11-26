class DogsController < ApplicationController

  def show
    @dog = Dog.find(params[:id])
    # binding.pry
    # @dog.dog_activities
  end

  def edit
    # @dog = Dog.find(params[:id])
  end

  def update
    # @dog = Dog.find(params[:id])

  end

  def destroy

  end

end
