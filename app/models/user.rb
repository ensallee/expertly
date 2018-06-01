class User < ApplicationRecord
  has_secure_password
  has_many :reviews

  has_many :courses

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  validates :username, presence: true, uniqueness: true

  def average_rating
    array = []
    self.reviews.each do |r|
      array.push(r.rating)
    end

    (array.inject { |sum, el| sum + el }.to_f / array.size).round(1)
  end


end
