class PostsController < ApplicationController

  def new
    @Post =Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |f|
      if (@post.save)
        f.html{redirect_to "", notice: "Post created!"}
      else
          f.html{redirect_to "", notice: "Error:Post not Saved"}
      end
    end
  end

  private
  def post_params  #allows certain datat to be passed via form
    params.require(:post).permit(:user_id, :content)
  end
end
