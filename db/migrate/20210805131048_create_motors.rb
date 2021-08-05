class CreateMotors < ActiveRecord::Migration[6.0]
  def change
    create_table :motors do |t|
      t.string :name
      t.string :motoType
      t.string :specification

      t.timestamps
    end
  end
end
