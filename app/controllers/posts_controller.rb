class PostsController < ApplicationController

  def index
  end

  def show
    @posts = Post.where()
  end

end
