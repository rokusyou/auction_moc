class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

  def bid
    @item = Item.find_by(id: params[:id])
    @item.price = @item.price + 1000
    @item.save
    redirect_to  action: :show ,id: @item.id
  end
end
