class PagesController < ApplicationController
  def index
  end

  def home
      @posts = Post.all
      @newPost = Post.new
  end

  def profile
    #grab the username from the url
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not Found!"
  end
  @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
  @newPost = Post.new
  @tofollow = User.all.limit(5)
  @tweets = current_user.posts.length

end

  def explore
  @posts = Post.all
  @newPost = Post.new
  @tofollow = User.all.last(5)
  end
end
