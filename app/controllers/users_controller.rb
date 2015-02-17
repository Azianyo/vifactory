class UsersController < ApplicationController
  def index
    @users = User.all
      	uploader = PhotoUploader.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.create(user_params)
  	redirect_to @user
  end 

  def user_params
  	params.require(:user).permit(:name, :photo, :description)
  end
end
