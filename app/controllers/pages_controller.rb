class PagesController < ApplicationController
  layout "homeLayout"
  def home
    @zeppelins = Zeppelin.find([1,2,3])
    @homepage = true
  end
end
