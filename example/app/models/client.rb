class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, format: {with: /w+@gmail.com/}
  
  #relacionamentos
  has_many :orders
end
