class DogsController < ApplicationController

  def show
    @dog = Dog.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
