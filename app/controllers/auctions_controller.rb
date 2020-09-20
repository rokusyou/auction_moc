class AuctionsController < ApplicationController
  def index
    @item = Item.first
  end

  def bid
    @item = Item.find_by(id: params[:id])
    @item.price = @item.price + 1000
    @item.save
    redirect_to  action: :index
  end
end
