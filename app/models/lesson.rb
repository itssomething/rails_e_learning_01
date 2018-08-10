class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :exam

  has_many :results
  has_many :questions, through: :results
end
