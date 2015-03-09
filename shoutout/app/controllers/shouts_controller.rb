class ShoutsController < ApplicationController
  
  def index
    @shouts = Shout.all
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

  #  def find_profile
  #   @profile = Profile.find params[:profile_id]
  # end
end
