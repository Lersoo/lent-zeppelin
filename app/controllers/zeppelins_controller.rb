class ZeppelinsController < ApplicationController
  before_action :set_zeppelin, only: %i[show]

  def index
    @zeppelins = Zeppelin.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_zeppelin
    @zeppelin = Zeppelin.find(params[:id])
  end

  def search_params
    params.permit(:location, :max_price, :date)
  end

end
