class FollowsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @posts = Follow.find_by(subscriber_id: params[:id])
  end

end
