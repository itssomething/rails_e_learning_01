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
      flash[:success] = "Category created"
      redirect_to root_path
    else
      flash[:warning] = "Failed"
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit :name
  end
end
