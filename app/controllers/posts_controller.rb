class PostsController < ApplicationController
   require 'mini_magick'
   before_action :authenticate_user!
 
  
  def new
    @post = Post.new
  end

  def create 
    Post.new(post_params.merge(user_id: session[:user_id]))
    redirect_to posts_path
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end
 
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
private 

def post_params
  params.require(:post).permit(:caption, :image)
end

def find_user
  @user = User.find_by_id(session[:user_id])
end

end
