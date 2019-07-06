class CommentsController < ApplicationController
  before_action :move_to_index

  def create
    Comment.create(comment_params)
    redirect_to "/tweets/#{params[:tweet_id]}"
  end

  def destroy
    comment = Comment.find(params[:id])
      if comment.user.id == current_user.id
        comment.delete
      end
    redirect_to "/tweets/#{params[:tweet_id]}"
  end

  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @comment = Comment.find(params[:id])
   
  end

  def update
    comment = Comment.find(params[:id])
    if comment.user_id == current_user.id
      comment.update(comment_params)
    end
    redirect_to "/tweets/#{params[:tweet_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(tweet_id: params[:tweet_id],user_id: current_user.id)
  end

  def move_to_index
    redirect_to tweets_path unless user_signed_in?
  end
end
