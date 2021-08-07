class RemoveEndAtFromAppointements < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointements, :end_at
  end
end
