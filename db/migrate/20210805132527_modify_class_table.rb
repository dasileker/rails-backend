class ModifyClassTable < ActiveRecord::Migration[6.0]
  def change
    add_column :motors, :motoImage, :string
    add_reference :drives, :name, :string
    remove_column :drives, :user, foreign_key: true
  end
end
