class ProductsController < ApplicationController

  before_action :category_list, only: [:new, :create, :edit]
  before_action :supplier_list, only: [:new, :create, :edit]
  before_action :find_product, only: [:edit, :update]
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to products_path
  end

  private
    def find_product
      @product = Product.find(params[:id])
    end

    def category_list
      @categories = Category.all.map {|category| category if category.has_parent? }.compact
    end

    def supplier_list
      @suppliers = Supplier.all
    end

    def product_params
      params.require(:product).permit(
        :name,
        :price,
        :price_per_weight,
        :weight,
        :description,
        :active,
        :category_id,
        :supplier_id,
        :photo)
    end


end
