class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]

  def show
  	@user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    flash[:success] = "Votre nom a été mis à jour"
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:user_name)
  end

end