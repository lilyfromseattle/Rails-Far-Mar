class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name))
    # raise params.inspect
    if @product.save
      redirect_to "/products"
    else
      redirect_to "/products/new"    
    end
  end

  def destroy
    # raise params.inspect
    @product = Product.all.find(params[:id])
    @product.destroy
    redirect_to "/products"
    # @product.destroy
  end

end
