class UpdateCoacheFkOnAppointements < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :appointements, :coaches
    add_foreign_key :appointements, :coaches, primary_key: :user_id
  end
end
