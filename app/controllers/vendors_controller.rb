class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    # @product = Product.find(params[:id])
    #   if @post.update(params.require[:product].permit(:name))
    #     redirect_to root_path
    #   else
    #     render :edit
    #   end
  end


  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:vendor_name))
    # raise params.inspect
    if @vendor.save
      redirect_to "/vendors"
    else
      redirect_to "/vendors/new"
    end
  end

  def destroy
    # raise params.inspect
    @vendor = Vendor.all.find(params[:id])
    @vendor.destroy
    redirect_to "/vendors"
    # @vendor.destroy
  end

end
