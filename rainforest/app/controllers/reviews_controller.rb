class ReviewsController < ApplicationController

  def create
    @review = Review.new
    @product = Product.find(params[:product_id])
    @review.product_id = params[:product_id]
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_url(@product)
      flash[:alert] = "Review added."
    end
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:review][:comment]

    if @review.save
      redirect_to product_url(params[:product_id])
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "You have successfully deleted this review."
    redirect_to product_url(params[:product_id])
  end


end
