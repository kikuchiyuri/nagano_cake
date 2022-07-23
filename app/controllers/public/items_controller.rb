class Public::ItemsController < ApplicationController
  def index
    @item = Item.all
    @item_count = Item.count
  end

  def show
    @item = Item.find(params[:id])
    @amount_array = [1,2,3,4,5]
  end
  

end
