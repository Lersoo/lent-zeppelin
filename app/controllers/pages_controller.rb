class PagesController < ApplicationController
  def home
    @zeppelins = Zeppelin.find([1,2,3])
  end
end
