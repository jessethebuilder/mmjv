class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  #before_action :set_product_type, only: [:index]

  respond_to :html

  def index
    @products = Product.all
    @products_hash = Product.products_hash
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :batch_description, :product_type_id, :thc, :cbd, :butane,
                                      {:imgs => []}, :remote_imgs_url, :imgs_cache,
                                       :donation, :quantity, :supplier_id, :donation_owed)
    end
end


