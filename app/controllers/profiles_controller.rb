class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = User.all
  end

  def show
  end

  def create
  end

  def new
  end

  def destroy
  end

  private

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :email, :encrypted_password, :avatar)
  end

  def set_profile
    @profile = User.find(params[:id])
  end

end
