class FollowsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    owner = User.find(params[:id])
    @posts = owner.favorite_posts
  end

end
