class PostsController < ApplicationController
  before_action :find_user 
  
  def new
    @post = Post.new
  end

  def create 
    Post.create(post_params.merge(user_id: session[:user.id]))
    # Post.create(post_params.merge(user_id: current_user.id))
    redirect_to posts_path
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end
 
private 

def post_params
  params.require(:post).permit(:caption, :image)
end

def find_user
  @user = User.find_by_id(session[:user_id])
end

end
