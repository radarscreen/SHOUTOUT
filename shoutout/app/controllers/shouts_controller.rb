class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all
    @profile = Profile.find_by_id(:profile_id)
  end

  def new
    @shout = Shout.new
  end

  def edit
  end

  def show
    @shout = Shout.all
    render profile_shout_path
    @profile = Profile.find_by_id(:id)
  end
end
