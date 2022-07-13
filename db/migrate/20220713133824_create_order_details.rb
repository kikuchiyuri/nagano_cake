class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.timestamps
      
      #注文ID（外部キー）
      t.integer :order_id
      #商品ID（外部キー）
      t.integer :item_id
      #購入時価格（税込）
      t.integer :price_intax
      #数量
      t.integer :amount
      #製作ステータス
      t.integer :making_status
    end
  end
end
