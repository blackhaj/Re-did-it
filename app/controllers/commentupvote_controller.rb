class CommentupvoteController < ApplicationController
  def create
    @commentupvote = Commentupvote.new(secure_params)
    @commentupvote.post = Comment.find(params[:post_id])
    if @commentupvote.save
      respond_to do |format|
        format.html { redirect_to @commentupvote.post }
        format.js # we'll use this later for AJAX!
      end
    end
  end

  def destroy
  end

  private
    def secure_params
      params.require(:commentupvote).permit(:user)
    end
end
