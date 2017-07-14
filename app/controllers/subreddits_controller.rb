class SubredditsController < ApplicationController

  def show
    @subreddit = Subreddit.find(params[:id])
  end

  def index
    @subreddits = Subreddit.all
  end

end