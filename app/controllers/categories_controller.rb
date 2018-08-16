class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t ".category_created"
      redirect_to root_path
    else
      flash[:warning] = t ".failed"
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit :name
  end
end
