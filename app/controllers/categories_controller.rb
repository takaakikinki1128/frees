class CategoriesController < ApplicationController
  def index
  end

  def new
    @categories = Tweet.where('category_id',"%#{params[:keyword]}%")
  end
  
end
