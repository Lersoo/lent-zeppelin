class ZeppelinsController < ApplicationController
  before_action :set_zeppelin, only: %i[show]

  def index
    search_params
    @zeppelins = Zeppelin.search(params[:search])
  end

  def show
    @zeppelin
    @markers = [{
                lat: @zeppelin.latitude,
                lng: @zeppelin.longitude
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
    params.permit(:search, :location)
  end

end
