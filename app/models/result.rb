class Result < ApplicationRecord
  belongs_to :lesson
  belongs_to :answer
  belongs_to :question
end
