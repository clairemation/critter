class FollowsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @feed = Feed.find(params[:id])
  end

end
