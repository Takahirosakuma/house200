class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post  = current_user.posts.build
      # @feed_items = current_user.feed.paginate(page: params[:page])
    end
    @feed_items = Post.paginate(page: params[:page], per_page: 5)
  end

  def usage
    
  end
end
