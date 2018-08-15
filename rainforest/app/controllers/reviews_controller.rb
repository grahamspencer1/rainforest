class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @review.comment = params[:product][:comment]
    if @review.save
      redirect_to product_url
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:product][:comment]
    if @review.save
      redirect_to product_url
    end
  end

  def destroy
  end


end
