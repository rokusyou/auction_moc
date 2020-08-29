class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def show
    @items = Item.all
  end
end
