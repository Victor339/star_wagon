class BookingsController < ApplicationController

def new
  @spaceship = Spaceship.find(params[:spaceship_id])
end

def create
	@spaceship = Spaceship.find(params[:spaceship_id])
	@booking = Booking.new(booking_params)
	@booking.spaceship = @spaceship
	@booking.user = @current_user

   if @booking.departure_date && @booking.arrival_date
    	@booking.value = @booking.spaceship.price.to_f
 	   else
    	@booking.value = 0
     end

  	if @booking.save
    	redirect_to booking_path(@booking)
  	else
    	redirect_to spaceships_path
  	end
end


  def show
  	set_booking
  	@spaceship = @booking.spaceship
  end


  def update
      set_booking
      redirect_to booking_path(@booking)
  end

  def edit
    set_booking
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to spaceships_path
  end

  private

  def booking_params
  	params.require(:booking).permit(:rating, :destination, :departure_date, :arrival_date, :total_price, :user_id)

  end

  def set_booking
  	@booking = Booking.find(params[:id])
  end
end
