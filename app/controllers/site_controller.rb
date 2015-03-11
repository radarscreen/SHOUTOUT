class SiteController < ApplicationController

  
  
  def index
    @user = User.new
    redirect_to profiles_path
  end

  def about
  end

end

