class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :edit, :destroy]
  skip_after_action :verify_authorized, only: [:create]

  def show
    authorize @booking
    set_booking
    @spaceship = @booking.spaceship
    @total_price = @booking.total_price
  end 

  def create
  	@spaceship = Spaceship.find(params[:spaceship_id])
  	@booking = Booking.new(booking_params)
  	@booking.spaceship = @spaceship
  	@booking.user = current_user

     #if @booking.departure_date && @booking.arrival_date
      	#@booking.total_price = @booking.spaceship.price.to_f
   	   #else
      	#@booking.total_price = 0
       #end

    if @booking.save
       redirect_to spaceship_path(@spaceship)
    else
      	redirect_to spaceships_path
    	end
  end

  def update
      redirect_to booking_path(@booking)
    end

  def edit
  end

    def destroy
      @booking.destroy
      redirect_to spaceships_path
    end

private

  def booking_params
  params.require(:booking).permit(:destination, :departure_date, :arrival_date, :total_price, :user_id)

  end

  def set_booking
   @booking = Booking.find(params[:id])
  end
end
