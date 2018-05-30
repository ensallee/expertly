class Course < ApplicationRecord
  belongs_to :user
  belongs_to :user_skill

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
