class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy show]

  def show
    
  end

  def new
    @zeppelin = Zeppelin.find(params[:zeppelin_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.zeppelin = Zeppelin.find(params[:zeppelin_id])
    @booking.user = current_user
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :description, :location, :price, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
