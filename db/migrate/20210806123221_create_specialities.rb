class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :specialities, :name, unique: true
  end
end
