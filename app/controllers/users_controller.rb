class UsersController < ApplicationController

  def show
    if @user
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  private

  def set_user
    @user = current_user
  end
end
