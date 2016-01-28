class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    #grab the username from the url
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not Found!"
  end
end

  def explore
  end
end
