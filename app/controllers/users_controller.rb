class UsersController < ApplicationController
  @user = User.find(params[:id])
  private
  def user_params
    params.require(:user).permit(:email)
  end
end
