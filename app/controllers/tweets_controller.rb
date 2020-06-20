class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.save!
    flash[:notice] = "つぶやきました。"
    redirect_to tweets_url
  end

  private

  def tweet_params
    params.require(:tweet).permit(:name)
  end
end
