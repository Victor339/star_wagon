class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:show, :edit, :update, :destroy]

  def index
    #@spaceships = Spaceship.all
    @spaceships = policy_scope(Spaceship).order(created_at: :desc)
  end

  def show
    authorize @spaceship
  end

   def edit
    authorize @spaceship
  end

  def new
    @spaceship = Spaceship.new
    authorize @spaceship
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    authorize @spaceship

    if @spaceship.save
      redirect_to spaceship_path(@spaceship), notice: 'Spaceship was successfully created.'
    else
      render :new
    end
  end

  def update
    authorize @spaceship
    @spaceship.update(spaceship_params)
  end

  def destroy
    authorize @spaceship
    @spaceship.destroy
    redirect_to spaceships_path
  end

  private

    def set_spaceship
      @spaceship = Spaceship.find(params[:id])
    end

  def spaceship_params
    params.require(:spaceship).permit(:name, :year_of_creation, :country, :price, :description)
  end
end
