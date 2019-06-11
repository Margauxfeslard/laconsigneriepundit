class ReviewsController < ApplicationController
  def new
    @biere = Biere.find(params[:biere_id])
    @review = Review.new
  end

  def create
    @biere = Biere.find(params[:biere_id])
    @review = Review.new(review_params)
    @review.biere = @biere
    @review.user = current_user
    if @review.save
      redirect_to biere_path(@biere)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:note, :contenu)
  end
end
