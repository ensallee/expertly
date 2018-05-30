class User < ApplicationRecord
  has_secure_password
  has_many :reviews

  has_many :courses

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  validates :username, presence: true, uniqueness: true


end
