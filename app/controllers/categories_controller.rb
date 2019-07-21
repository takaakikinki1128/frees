class CategoriesController < ApplicationController
  def index
  end

  def new
    @categories = Tweet.where('category_id',"%#{params[:keyword]}%")
    @categories1 = params.require(:category)[:keywords]
    @genre = []
    @categories1.each do |category|
      @genre2 = Tweet.where("category_id = ?",category)
      @genre << @genre2
    end
  end

  
  
end
