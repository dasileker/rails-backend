class RenameStartDateAndEndDateInAppointements < ActiveRecord::Migration[6.1]
  def change
    rename_column :appointements, :start_date, :start_at
    rename_column :appointements, :end_date, :end_at
  end
end
