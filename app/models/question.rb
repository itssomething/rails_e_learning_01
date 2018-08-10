class Question < ApplicationRecord
  belongs_to :question_bank

  has_many :answers
  has_many :results
  has_many :lessons, through: :results

  enum multi_correct: {no: 0, yes: 1}
end
