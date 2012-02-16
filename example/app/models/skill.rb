class Skill < ActiveRecord::Base
  has_many :developer_skills
  has_many :developers, :through => :developer_skills
end
