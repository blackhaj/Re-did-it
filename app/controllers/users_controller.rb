class UsersController < ApplicationController

  def show
    @user = User.find_by_username(params[:id]) #check this is kosher
  end

  def index
    @users = User.all 
  end

end