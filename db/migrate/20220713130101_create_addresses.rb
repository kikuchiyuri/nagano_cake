class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|

      t.timestamps
      
      #会員IDを保存するカラム（外部キー）
      t.integer :customer_id
      #配送先情報を保存するカラム
      t.string :name
      t.string :postal_code
      t.string :address
    end
  end
end
