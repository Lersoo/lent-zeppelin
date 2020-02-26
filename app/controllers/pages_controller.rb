class PagesController < ApplicationController
  def home
    @zeppelins = Zeppelin.all
  end
end
