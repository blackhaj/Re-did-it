class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

end