class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path

  end

  def index
  end

  def show
  end

  def edit
  end


  private

  def item_params
    params.require(:item).permit(:name, :introduction, :price, :image, :genre_id)
  end

end
