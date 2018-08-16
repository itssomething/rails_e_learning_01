class Answer < ApplicationRecord
  belongs_to :question

  enum correctness: {wrong: 0, correct: 1}
end
