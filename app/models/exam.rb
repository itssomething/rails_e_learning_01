class Exam < ApplicationRecord
  belongs_to :question_bank

  has_many :lessons
  has_many :users, through: :lessons
end
