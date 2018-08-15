class CreateQuestionBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :question_banks do |t|
      t.string :name
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
