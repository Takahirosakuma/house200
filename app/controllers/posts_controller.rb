class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :destroy]
  before_action :correct_user,   only: :destroy

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).paginate(page: params[:page], per_page: 5)
    @check = params[:q]
  end


  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.image.attach(params[:post][:image])
    if @post.save
      flash[:success] = "投稿されました"
      redirect_to root_url
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "編集されました"
      redirect_to current_user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "投稿が削除されました"
    if request.referrer.nil?
      redirect_to root_url, status: :see_other
    else
      redirect_to request.referrer, status: :see_other
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :prefecture, :city, :score, :image)
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to root_url, status: :see_other if @post.nil?
  end
end
