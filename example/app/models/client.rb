class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true#, format: {with: /w+@gmail.com/}
  
  #relacionamentos
  has_many :orders
  
  def self.auth data
        find_by_name_and_password data[:name], data[:password]
      end
end
