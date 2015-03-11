class ProfileSessionsController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    if @profile = login(params[:username], params[:password])
      redirect_back_or_to(:profiles, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:profiles, notice: 'Logged out!')
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :password)
  end
end
