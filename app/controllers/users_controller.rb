class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(4).order("created_at DESC")
  end

  def search
    
  end

  def index
    @users = User.where('nickname LIKE(?)',"%#{params[:keyword]}%").limit(15)

    respond_to do |format|
      format.html
      format.json
    end

  end

  
end
