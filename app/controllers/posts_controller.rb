class PostsController < ApplicationController

  def index
  end

  def show
    @owner = User.find(params[:id])
    @posts = @owner.favorite_posts.order(created_at: :desc)
  end
end
