class OrderDetail < ApplicationRecord

  belongs_to :item
  belongs_to :order, dependent: :destroy
end
