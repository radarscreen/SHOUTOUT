class ShoutsController < ApplicationController
  #before_action :find_profile, only: [:index, :edit, :show, :destroy] 
  def index
    @shouts = Shout.all
    @profile = Profile.find params[:profile_id]
  end

  def create
  end

  def new
    @shout = Shout.new
  end

  def edit
  end

  def show
    @shouts = Shout.all
   @profile = Profile.find params[:profile_id]
    render profile_shouts_path
  end

  private 
  def shout_params
    params.require(:shout).permit(:id, :profile_id, :category_id, :title, :time, :description, :location)
  end

  def profile_params
    params.require(:profile).permit(:id, :username, :email, :password)
  end

  #  def find_profile
  #   @profile = Profile.find params[:profile_id]
  # end
end
