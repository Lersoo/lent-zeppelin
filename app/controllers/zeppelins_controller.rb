class ZeppelinsController < ApplicationController
  before_action :set_zeppelin, only: %i[show]

  def index
    @zeppelins = Zeppelin.search(params[:search])
    @markers = @zeppelins.map do |zeppelin|
      {
        lat: zeppelin.latitude,
        lng: zeppelin.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { zeppelin: zeppelin })

      }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{
                lat: @zeppelin.latitude,
                lng: @zeppelin.longitude,
                infoWindow: render_to_string(partial: "info_window", locals: { zeppelin: @zeppelin })
               }]
  end

  def new
    @zeppelin = Zeppelin.new
  end

  def create
    @zeppelin = Zeppelin.new(zeppelin_params)
    @zeppelin.user = current_user
    @zeppelin.save!
    redirect_to zeppelins_path
  end

  private

  def set_zeppelin
    @zeppelin = Zeppelin.find(params[:id])
  end
  # setting strong params
  def zeppelin_params
    params.require(:zeppelin).permit(:name, :location, :price, :start_date, :end_date, :photo)
  end

  def search_params
    params.permit(:location)
  end

end
