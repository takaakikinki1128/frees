class StarsController < ApplicationController
  def create
    Star.create(user_id: current_user.id, tweet_id: params[:tweet_id])
   
  end

  def destroy
    star = Star.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    star.delete
    
  end
end
