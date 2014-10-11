class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def edit
    @market = Market.find(params[:id])
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
    @market = Market.new(params.require(:market).permit(:market_name))
    # raise params.inspect
    if @market.save
      redirect_to "/markets"
    else
      redirect_to "/markets/new"
    end
  end

  def destroy
    # raise params.inspect
    @market = Market.all.find(params[:id])
    @market.destroy
    redirect_to "/markets"
    # @market.destroy
  end

end
