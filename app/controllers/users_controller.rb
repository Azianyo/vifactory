class UsersController < ApplicationController
  def index
    @users = User.all
     @partner = Partner.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
  		redirect_to about_path
  		flash[:success] = "Użytkownik został poprawnie edytowany"

  	else 
  		flash[:warning] = "Użytkownik nie został poprawnie edytowany"
      flash
      render 'show'
  	end
  end 

  def user_params
  	params.require(:user).permit(:name, :photo, :description)
  end
end
