class AuctionsController < ApplicationController
  def index
    @item = Item.first
  end

  def bid
    @item = Item.find_by(id: params[:id])
    @item.price = @item.price + 1000
    @item.user_id = params[:user_id]

    respond_to do |format|
      if @item.save
        ActionCable.server.broadcast 'auction_channel', content: @item.price
        format.html { redirect_to action: :index }
        format.json { render :index }
        format.js
      else
        redirect_to action: :index
      end
    end
  end
end
