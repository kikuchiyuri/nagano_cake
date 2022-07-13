class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.timestamps
      
      #ジャンルIDを保存するカラム（外務キー）
      t.integer :genne_id
      #商品名
      t.string :name
      #商品説明文
      t.text :introduction
      #税抜き価格
      t.integer :price
      #販売ステータス
      t.boolean :is_active
    end
  end
end
