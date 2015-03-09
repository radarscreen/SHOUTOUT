class ProfilesController < ApplicationController

  def new
     @profile = Profile.new
  end


  def show
     render :profile_shout_path
  end

  def edit
  end

  def create
    @profile = Profile.new  profile_params
    if @profile.save
       redirect_to '/profiles/:profile_id/shouts' #:notice => "SHOUT IT OUT!"
    else 
      render :profile
    end ### it says the template is missing profiles/create 
  end ##this could be a good resource: http://stackoverflow.com/questions/22671101/what-does-this-mean-missing-template-ruby-rails-4-devise-2
  ##also have an inkling that the user isn't being saved properly, which would cause the 'else' to manifest.

  def update
  end

  def destroy
  end

  private
  # def attempt_login 
  #   if params[:username].present? && params[:password].present?
  #     found_profile = Profile.where(username: params[:profile]).first
  #     if found_profile
  #       authorized_profile = found_profile.authenticate(params[:password])
  #     end
  #   end

  def profile_params
    # params.require(:profile).permit(:username, :email, :password, :password_digest)
  end
end
