class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
end

#rails g model OrderItem \
#  order:references \
#  product:references \
#  quantity:integer \
#  price:float \
#  total:float