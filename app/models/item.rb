class Item < ApplicationRecord

  belongs_to :genre

#商品画像投稿
  has_one_attached :image
#画像のサイズ変更
  #def image(width,height)
    #image.variant(resize_to_limit: [width, height]).processed
  #end

end
