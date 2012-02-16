class CreateDeveloperSkills < ActiveRecord::Migration
  def change
    create_table :developer_skills do |t|
      t.references :developer
      t.references :skill
      t.integer :level

      t.timestamps
    end
    add_index :developer_skills, :developer_id
    add_index :developer_skills, :skill_id
  end
end
