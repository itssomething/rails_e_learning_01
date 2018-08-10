class QuestionBank < ApplicationRecord
  belongs_to :category

  has_many :exams
  has_many :questions
  has_many :lessons, through: :exams
end
