class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|

      t.timestamps
      #商品ID（外部キー）
      t.integer :item_id
      #会員ID（外部キー）
      t.integer :customer_id
      #数量
      t.integer :amount
    end
  end
end
