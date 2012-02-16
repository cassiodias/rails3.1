class Developer < ActiveRecord::Base
  has_many :developer_skills
  has_many :skills, :through => :developer_skills
end
