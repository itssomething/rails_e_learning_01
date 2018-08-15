class Answer < ApplicationRecord
  belongs_to :question

  enum correctness: {false: 0, true: 1}
end
