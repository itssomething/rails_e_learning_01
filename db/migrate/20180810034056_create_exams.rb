class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :duration
      t.integer :limit_chance
      t.integer :question_numbers
      t.integer :min_to_pass
      t.references :question_bank, foreign_key: true

      t.timestamps
    end
  end
end
