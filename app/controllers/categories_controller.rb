class CategoriesController < ApplicationController
  before_action :categories_parent, only: [:index, :new, :create]

  def index

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private
    def categories_parent
      @categories = Category.all.map {|category| category if !category.has_parent? }.compact
    end

    def category_params
      params.require(:category).permit(:name, :ancestry)
    end
end
