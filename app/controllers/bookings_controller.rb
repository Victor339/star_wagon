class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :edit, :destroy]

  def index
   @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    authorize @booking
    set_booking
    @spaceship = @booking.spaceship
    @total_price = @booking.total_price
  end

  def create
  	@spaceship = Spaceship.find(params[:spaceship_id])
  	@booking = Booking.new(booking_params)
    authorize @booking
  	@booking.spaceship = @spaceship
  	@booking.user = current_user


     #if @booking.departure_date && @booking.arrival_date
      	#@booking.total_price = @booking.spaceship.price.to_f
   	   #else
      	#@booking.total_price = 0
       #end
      sleep 8
    if @booking.save
       redirect_to booking_path(@booking)
    else
      	render "spaceships/show"
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
