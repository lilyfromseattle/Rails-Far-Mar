class ProductsController < ApplicationController
    def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name))
    if @product.save
      redirect_to root_path
    else
    end
  end

  def destroy
    self.delete
  end

end
