class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :set_search

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order(created_at: :desc).paginate(page: params[:page])
  end


  private

  # ユーザーのログインを確認する
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください"
      redirect_to login_url, status: :see_other
    end
  end
end
