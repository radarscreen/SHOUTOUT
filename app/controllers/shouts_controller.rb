class ShoutsController < ApplicationController
  #before_action :find_profile, only: [:index, :edit, :show, :destroy] 
  def index
    @shouts = Shout.all
    @profile = Profile.find params[:profile_id]
  end

  def create
    @profile = Profile.find_by_id(params[:profile_id])
    @shout = Shout.create shout_params
    redirect_to profile_shouts_path @profile
  end

  def new
    @shout = Shout.new
    @categories = Category.all
  end

 
  def edit
    @profile = Profile.find_by_id(params[:profile_id])
    @shout = Shout.find_by_id(params[:id])
  end


  def update
    @shout = Shout.find_by_id(params[:id])
    @shout.update_attributes shout_params
    redirect_to profile_shout_path
  end


  def show
    @profile = Profile.find params[:profile_id]
    @shout = Shout.find_by_id(params[:id])
    @category = Category.all
  end

  def destroy
    #profile = Profile.find params[:profile_id]
    shout = Shout.find params[:id]
    shout.destroy
    redirect_to profile_shouts_path(shout.profile)
    ##this redirect with the shout.profile used to work...not sure why it isn't anymore. tim explaine that a shout had a profile and that's why we have referenced it this way.

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

 

