class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def create
    
    Tweet.create(name: tweet_params[:name],image: tweet_params[:image],text: tweet_params[:text],video: tweet_params[:video],user_id: current_user.id,category_id:params[:category_id] )
  end

  def new
    @tweet = Tweet.new
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.delete
      redirect_to root_path
    end
    
  end

  def edit
    @tweet = Tweet.find(params[:id])
    
    
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(name: tweet_params[:name],image: tweet_params[:image],text: tweet_params[:text],video: tweet_params[:video],user_id: current_user.id,category_id:params[:category_id] )
    end
  end
  
  def show
    @tweet = Tweet.find(params[:id])
    @comment= Comment.new
    @comments = @tweet.comments.includes(:user).order("created_at DESC").page(params[:page]).per(4)
    @stars = @tweet.stars
    @stars_count = @stars.count
    if user_signed_in?
      @star = @stars.where("user_id = ?",current_user.id)
    end
    
  end

 

  
  private

  def tweet_params
    params.require(:tweet).permit(:name,:image,:text,:video,:category_id)
  end

  def move_to_index
    redirect_to action: :home unless user_signed_in?
  end

end
