class ZeppelinsController < ApplicationController
  before_action :set_zeppelin

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

end
