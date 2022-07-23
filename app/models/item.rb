class Item < ApplicationRecord

  belongs_to :genre
  belongs_to :home
  has_many :items


  # 商品画像投稿
  has_one_attached :image

  # 画像のサイズ変更
  def get_image(width, height)
    image.variant(resize_to_fill: [width, height]).processed
  end


  # 10%の消費税を加えた税込価格のメソッドを定義
  def add_tax_price
    (self.price * 1.10).round
  end

end
