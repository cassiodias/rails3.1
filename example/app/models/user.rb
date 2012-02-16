class User < ActiveRecord::Base
  
  def self.auth data
      find_by_name_and_pass data[:name], data[:pass]
    end
end
