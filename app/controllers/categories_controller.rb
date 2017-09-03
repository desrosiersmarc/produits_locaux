class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :categories_parent, only: [:index, :new, :create, :edit]
  before_action :find_category, only: [:edit, :update, :destroy, :show]

  def index
    @Products = Product.all.where(active: true)
    @order_item = current_order.order_items.new
  end

  def show
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

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to categories_path
  end

  def destroy
    @category.delete
    redirect_to categories_path
  end

  private
    def categories_parent
      @categories = Category.all.map {|category| category if !category.has_parent? }.compact
    end

    def category_params
      params.require(:category).permit(:name, :ancestry)
    end

    def find_category
      @category = Category.find(params[:id])
    end
end
