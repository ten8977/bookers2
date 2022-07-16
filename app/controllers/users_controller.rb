class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  #  @books = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def index
    @user = current_user
  end


end

