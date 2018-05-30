class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  has_many :courses

  def teacher
    if self.user.teacher == true
      self.user
    end
  end

end
