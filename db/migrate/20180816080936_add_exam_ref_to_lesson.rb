class AddExamRefToLesson < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :exam, foreign_key: true
  end
end
