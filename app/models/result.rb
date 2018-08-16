class Result < ApplicationRecord
  belongs_to :lesson
  belongs_to :question

  enum current_result_status: {wrong: 0, correct: 1}
end
