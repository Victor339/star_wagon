class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  def spaceship_params
    params.require(:spaceship).permit(:name, :year_of_creation, :country, :price, :description)
  end
end
