class Public::CartItemsController < ApplicationController
  def index
    @cart_item = CartItem.all
    #コントローラーでは合計金額の初期を設定
    @total = 0
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

  def create
    cart_item = CartItem.new(cart_item_params)
    cart_item.customer_id = current_customer.id
    cart_item.save
    redirect_to cart_items_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end
