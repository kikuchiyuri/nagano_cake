class Order < ApplicationRecord

  belongs_to :customer
  has_many :order_details

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { before_payment: 0, confirm_pament: 1, making_cakes: 2, preparation: 3, done: 4 }
end
