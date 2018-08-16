class QuestionBank < ApplicationRecord
  belongs_to :category

  has_many :exams
  has_many :questions
  has_many :lessons, through: :exams

  accepts_nested_attributes_for :questions,
    reject_if: :all_blank, allow_destroy: true
end
