class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @product = Product.find(params[:product_id])
    @review.product_id = params[:product_id]
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_url(@product)
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_url
    end
  end

  def destroy
  end


end
