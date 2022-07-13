class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.timestamps
      #会員ID（外部キー）
      t.integer :customer_id
      #配送先情報
      t.string :address
      t.string :name
      t.string :postal_code
      #支払方法
      t.integer :payment_method
      #請求額
      t.integer :total_payment
      #送料
      t.integer :shopping_cost
      #注文ステータス
      t.integer :status
    end
  end
end
