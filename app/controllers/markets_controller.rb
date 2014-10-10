class MarketsController < ApplicationController
  before_action :set_market, only: [:show, :edit, :update, :destroy]


  def index
    @markets = Market.all
  end


  def show
    
  end

  def new
    @market = Market.new
  end


  def edit
  end


  def create
  end


  def update
  end

  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_params
      params.require(:market).permit(:name, :address)
    end
end
