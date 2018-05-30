class AddDescriptionToUserSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :user_skills, :description, :text
  end
end
