class UsersController < ApplicationController
  before_action :find_user

private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(
      :firstname,
      :lastname,
      :mobil_phone)
  end
end
