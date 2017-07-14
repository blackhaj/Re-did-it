class DownvoteController < ApplicationController
  def create
    @downvote = Downvote.new(secure_params)
    @downvote.post = Post.find(params[:post_id])
    if @downvote.save
      respond_to do |format|
        format.html { redirect_to @downvote.post }
        format.js # we'll use this later for AJAX!
      end
    end
  end

  def destroy
  end

  private
    def secure_params
      params.require(:upvote).permit(:user)
    end
  
end
