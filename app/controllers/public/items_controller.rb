class Public::ItemsController < ApplicationController
  def index
    @item = Item.all
    @item_count = Item.count
  end

  def show
  end
end
