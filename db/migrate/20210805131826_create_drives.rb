class CreateDrives < ActiveRecord::Migration[6.0]
  def change
    create_table :drives do |t|
      t.string :name
      t.datetime :drive_time
      t.references :motor, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
