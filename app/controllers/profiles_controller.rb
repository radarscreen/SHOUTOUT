class ProfilesController < ApplicationController
  # before_action :find_profile, only: 

  def new
     @profile = Profile.new
  end

  def show
    @profile = Profile.find_by_id(params[:id])
     #render :profile_shouts_path
  end

  def edit
    @profile = Profile.find_by_id(params[:id])
  end

  def create
    @profile = Profile.create profile_params
    puts profile_params
    found_profile_by_username = Profile.where(username: params[:username]).first
    found_profile_by_email = Profile.where(email: params[:email]).first
    if found_profile_by_username or found_profile_by_email
      flash[:error] = "That username or email already exists. Try something different."
      redirect_to new_profile_path
    elsif @profile.save
      redirect_to profile_shouts_path @profile
    else
      redirect_to new_profile_path
      flash[:error] = "Your information is incomplete or you've chosen a username/email that already exists"
    end
    # @profile = Profile.new  profile_params
    # if @profile.save
    #    redirect_to '/profiles/:profile_id/shouts' #:notice => "SHOUT IT OUT!"
    # else 
    #   render 'new'
    # end ### it says the template is missing profiles/create 
  end ##this could be a good resource: http://stackoverflow.com/questions/22671101/what-does-this-mean-missing-template-ruby-rails-4-devise-2
  ##also have an inkling that the user isn't being saved properly, which would cause the 'else' to manifest.

  def update
    @profile = Profile.find_by_id(params[:id])
    if @profile.update_attributes profile_params
      redirect_to profile_shouts_path @profile, notice: "Successfully edited"
    else
      flash[:error] = "Your information is incomplete"
      redirect_to edit_profile_path
    end
  end

  def destroy
    @profile = Profile.find_by_id(params[:id])
    @profile.delete        
    redirect_to root_path
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
    params.require(:profile).permit(:id, :username, :email, :password, :phone_number, :notification)
  end

  def find_profile
    @profile = Profile.find params[:id]
  end
end
