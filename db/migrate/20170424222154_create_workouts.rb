class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.references :instructor, foreign_key: true
      t.string :description
      t.timestamp :time

      t.timestamps
    end
  end
end
