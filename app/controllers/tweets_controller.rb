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
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update!(tweet_params)
    flash[:notice] = "ツイートを更新しました。"
    redirect_to tweets_url
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_url, notice: "ツイートを削除しました。"
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.save!
    flash[:notice] = "ツイートしました。"
    redirect_to tweets_url
  end

  private

  def tweet_params
    params.require(:tweet).permit(:name)
  end
end
