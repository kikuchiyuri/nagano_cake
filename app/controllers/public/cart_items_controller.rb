class Public::CartItemsController < ApplicationController
  def index
    @cart_item = CartItem.all
    #コントローラーでは合計金額の初期値を設定
    @total = 0

  end

  def update
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    @cart_items = CartItem.all
    @cart_items.destroy_all
    redirect_to cart_items_path
  end

  def create
    cart_item = CartItem.new(cart_item_params)
    cart_item.customer_id = current_customer.id
    if Item.find_by(params[:item_id]).present?
      Item.find_by(params[:item_id]).cart_item.amount += params[:item_id].to_i
      cart_item.find_by(params).save
      redirect_to cart_items_path
    else
      cart_item.save
      redirect_to cart_items_path
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end
