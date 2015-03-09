class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end


  def show
      #test for pull request #3
      #test again
  end

  def edit
  end

  def create
    @profile = Profile.new  profile_params
    if @profile.save
      redirect_to shouts_show_path :notice => "SHOUT IT OUT!"
    else 
      render "new"
    end 
  end

  def update
  end

  def destroy
  end

  private
  def attempt_login 
    if params[:username].present? && params[:password].present?
      found_user = Profile.where(username: params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

  def profile_params
    params.require(:profile).permit(:username, :email, :password, :password_digest)
  end

end
