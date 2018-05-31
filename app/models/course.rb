class Course < ApplicationRecord
  belongs_to :user
  belongs_to :user_skill
  validates_uniqueness_of :user_id, scope: :user_skill_id


  ##test

  # has_one :skill, through: :user_skill
  # has_one :teacher, through: :user_skill, source: :user
  # has_one :description, through: :user_skill, source: :description


  def teacher
    self.user_skill.teacher
  end

  def description
    self.user_skill.description
  end

  def student
    self.user
  end
end
