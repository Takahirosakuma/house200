class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "投稿されました"
      redirect_to root_url
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
