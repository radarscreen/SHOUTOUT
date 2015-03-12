class ProfileSessionsController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def create
  profile = Profile.new profile_params
    if profile.save
      session[:profile_id] = profile.id
      redirect_to home_path, notice: "Successfully created"
    else
      render :signup
    end
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_profile = Profile.where(username: params[:username]).first
      if found_profile
        authorized_profile = found_profile.authenticate(params[:password])
          if authorized_profile
            redirect_to profile_shouts_path(authorized_profile), notice: "You've succesfully logged in!"
            else
            redirect_to login_path, notice: "Your password is invalid"
          end
          else
          redirect_to login_path, notice: "Your username is invalid"
      end
    end
  end

  def logout
    session[:profile_id] = nil
    redirect_to root_path
  end
 

  def new
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :password, :password_digest)
  end

  def prevent_login_signup
    if session[:profile_id]
      redirect_to home_path
    end
  end


end
