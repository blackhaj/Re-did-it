class CommentdownvoteController < ApplicationController
  def create
    @commentdownvote = commentdownvote.new(secure_params)
    @commentdownvote.post = Comment.find(params[:post_id])
    if @commentdownvote.save
      respond_to do |format|
        format.html { redirect_to @commentdownvote.post }
        format.js # we'll use this later for AJAX!
      end
    end
  end

  def destroy
  end

  private
    def secure_params
      params.require(:commentdownvote).permit(:user)
    end
end
