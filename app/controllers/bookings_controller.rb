require 'date'

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
    @booking.total_price = 500
    if @booking.save
      redirect_to booking_path(@booking)
    else
    end
  end

  def destroy
    @booking.destroy
    redirect_to profile_users_path
  end

  private

  def booking_params
    params.require(:booking).permit(:zeppelin_id, :user_id, :booking_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
