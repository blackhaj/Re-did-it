class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all.order(post_karma: :desc)
    @posts = @posts.limit(50)
  end

end