class DeveloperSkill < ActiveRecord::Base
  belongs_to :developer
  belongs_to :skill
end
