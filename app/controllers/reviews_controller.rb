class ReviewsController < ApplicationController
  before_action :find_organization
  before_action :find_review, only: %i[edit update destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.organization_id = @organization.id
    @review.user_id = current_user.id
    if @review.save
      redirect_to organization_path(@organization)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to organization_path(@organization)
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to organization_path(@organization)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_organization
    @organization = Organization.find(params[:organization_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
