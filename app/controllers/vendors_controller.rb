class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  def index
    @vendors = Vendor.all
  end


  def show
  end

  def new
    @vendor = Vendor.new
  end


  def create

  end


  def update

  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:vendor_name, :market_name, :product)
    end
end
