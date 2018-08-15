class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :score
      t.time :time_start
      t.integer :status

      t.timestamps
    end
  end
end
