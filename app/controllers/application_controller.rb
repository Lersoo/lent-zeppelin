class ApplicationController < ActionController::Base

  before_action :truc

  def truc
    puts ENV["RAILS_ENV"]
  end
end
