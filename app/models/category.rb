class Category < ApplicationRecord
  has_many :question_banks
  has_many :exams, through: :question_banks
  has_many :lessons, through: :exams
end
