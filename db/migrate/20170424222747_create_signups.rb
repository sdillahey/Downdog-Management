class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.references :workout, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
