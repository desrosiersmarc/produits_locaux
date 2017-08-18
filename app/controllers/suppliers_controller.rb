class SuppliersController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :new, :edit, :create, :update]
  before_action :find_supplier, only: [:show, :edit, :update]
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  def update
    @supplier.update(supplier_params)
    redirect_to suppliers_path
  end

  private
  def find_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name)
  end

end
